module Ucsman
  # Handle building XML requests for UCS Manager
  class Request
    # Clean up the XML results from UCS Manager
    def self.transform_results(results)
      Hash.from_xml(
        results
      ).deep_transform_keys do |key|
        key.underscore.gsub('out_', '').to_sym
      end
    end

    # Query configResolveChildren
    def self.config_resolve_children(params)
      xmldoc = Nokogiri::XML::Builder.new do |xml|
        xml.configResolveChildren(
          Request.config_resolve_children_prepare(params)
        )
      end.to_xml
      Request.transform_results(
        Client.post(params[:client].url, xmldoc)
      )[:config_resolve_children]
    end

    def self.config_resolve_children_prepare(params)
      if params[:class_id]
        return {
          'cookie' => params[:client].cookie,
          'inHierarchical' => params[:recursive],
          'classId' => params[:class_id].to_s.camelize(:lower),
          'inDn' => params[:dn]
        }
      else
        return {
          'cookie' => params[:client].cookie,
          'inHierarchical' => params[:recursive],
          'inDn' => params[:dn]
        }
      end
    end

    # Query configResolveClass
    def self.config_resolve_class(params)
      xmldoc = Nokogiri::XML::Builder.new do |xml|
        xml.configResolveClass(
          'cookie' => params[:client].cookie,
          'inHierarchical' => params[:recursive],
          'classId' => params[:class_id].to_s.camelize(:lower)
        )
      end.to_xml
      Request.transform_results(
        Client.post(params[:client].url, xmldoc)
      )[:config_resolve_class]
    end

    # Query configResolveClasses
    def self.config_resolve_classes(params)
      Nokogiri::XML::Builder.new do |xml|
        xml.configResolveClasses(
          'cookie' => params[:client],
          'inHierarchical' => params[:recursive],
          'inIds' => params[:classes].map do |item|
            item.to_s.camelize(:lower)
          end
        )
      end.to_xml
      Request.transform_results(
        Client.post(params[:client].url, xmldoc)
      )[:config_resolve_classes]
    end

    # Query configResolveDn
    def self.config_resolve_dn(_params)
    end

    # Query configResolveDns
    def self.config_resolve_dns(_params)
    end

    # Query configResolveParent
    def self.config_resolve_parent(_params)
    end

    # Query configScope
    def self.config_scope(_params)
    end
  end
end
