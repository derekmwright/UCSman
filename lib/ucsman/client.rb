module Ucsman
  # This class creates a instance of a connection to a
  # UCS manager. The object should be passed to other
  # classes for retrieving data from the UCS.
  class Client
    private

    attr_reader :username
    attr_reader :password
    attr_reader :hostname
    attr_reader :details

    # Test for parameters required to instantiate
    def required_params(params)
      params[:verify_ssl] = params[:verify_ssl] || true
      required_params = [
        :username,
        :password,
        :hostname,
        :verify_ssl
      ]
      required_params.map do |param|
        unless params.key? param
          fail ArgumentError, "Missing parameter: #{param}", caller
        end
      end
    end

    # Build login XML to be passed to the UCS Manager
    def login_xml
      Nokogiri::XML::Builder.new do |xml|
        xml.aaaLogin(
          'inName' => @username,
          'inPassword' => @password
        )
      end
    end

    # Build logout xml to be passed to the UCS Manager
    def logout_xml
      Nokogiri::XML::Builder.new do |xml|
        xml.aaaLogout(
          'inCookie' => @cookie
        )
      end
    end

    # Wrapper for RestClient.post allowing
    # for additional parameters.
    def self.post(url, payload)
      RestClient::Request.execute(
        method: :post,
        url: url,
        payload: payload,
        verify_ssl: @verify_ssl,
        headers: {
          content_type: 'text/xml'
        }
      )
    end

    # Wrapper for RestClient.get allowing
    # for additional parameters.
    def self.get(url)
      RestClient::Request.execute(
        method: :get,
        url: url,
        verify_ssl: @verify_ssl
      )
    end

    public

    attr_reader :cookie
    attr_reader :verify_ssl
    attr_reader :url

    # Validate parameters and connect to the UCS Manager
    def initialize(params)
      required_params(params)
      @username = params[:username]
      @password = params[:password]
      @hostname = params[:hostname]
      @verify_ssl = params[:verify_ssl]
      @url = "https://#{@hostname}/nuova"
    end
    # Login to the UCS Manager
    def login
      @details = Hash.from_xml(
        Client.post(@url, login_xml.to_xml)
      )['aaaLogin'].deep_transform_keys do |key|
        key.underscore.gsub('out_', '').to_sym
      end
      @cookie = @details.delete(:cookie)
    end

    # Test to see if logged in
    def logged_in?
      if @cookie.nil?
        false
      else
        true
      end
    end

    # Logout of the UCS Manager
    def logout
      response = Hash.from_xml(
        Client.post(@url, logout_xml.to_xml)
      )['aaaLogout'].deep_transform_keys do |key|
        key.underscore.gsub('out_', '').to_sym
      end
      return false unless response[:status] == 'success'
      @cookie = nil
      @details = nil
      true
    end

    def system
      Ucsman::Request.config_resolve_class(
        client: self,
        class_id: :top_system,
        recursive: false
      )[:configs]
    end

    def macpool
      extend MacPool
    end

    def wwnnpool
      extend WwnnPool
    end

    def wwpnpool
      extend WwpnPool
    end
  end
end
