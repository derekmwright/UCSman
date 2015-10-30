module Ucsman
  # Access Mac Pool information from UCS
  class MacPool
    def self.login_check(client)
      return true if client.logged_in?
      fail 'Client is not logged in.'
    end

    # Return all macs defined in the UCS Manager
    def self.get_all_macs(client)
      Ucsman::Request.config_resolve_class(
        client: client,
        class_id: :macpool_addr,
        recursive: false
      )[:configs][:macpool_addr]
    end

    # Return all mac pools defined in the UCS Manager
    def self.get_all_pools(client)
      Ucsman::Request.config_resolve_children(
        client: client,
        class_id: :macpool_pool,
        dn: 'org-root',
        recursive: false
      )[:configs][:macpool_pool]
    end

    def self.get_mac_pool(client, dn)
      Ucsman::Request.config_resolve_children(
        client: client,
        dn: dn,
        recursive: false
      )[:configs]
    end
  end
end
