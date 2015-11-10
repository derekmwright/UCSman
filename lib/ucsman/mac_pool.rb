# Access Mac Pool information from UCS
module MacPool
  def login_check
    return true if self.logged_in?
    fail 'Client is not logged in.'
  end

  # Return all macs defined in the UCS Manager
  def all_macs
    Ucsman::Request.config_resolve_class(
      client: self,
      class_id: :macpool_addr,
      recursive: false
    )[:configs][:macpool_addr]
  end

  # Return all mac pools defined in the UCS Manager
  def all_pools
    Ucsman::Request.config_resolve_children(
      client: self,
      class_id: :macpool_pool,
      dn: 'org-root',
      recursive: false
    )[:configs][:macpool_pool]
  end

  def mac_pool(dn)
    Ucsman::Request.config_resolve_children(
      client: self,
      dn: dn,
      recursive: false
    )[:configs]
  end
end
