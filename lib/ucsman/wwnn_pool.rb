# Access WWNN Pool information from UCS
module WwnnPool
  # Return all wwnn pools defined in the UCS Manager
  def all_pools
    Ucsman::Request.config_resolve_children(
      client: self,
      class_id: :fcpool_initiator,
      dn: 'org-root',
      recursive: false
    )[:configs]
  end
end
