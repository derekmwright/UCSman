require 'ucsman'
require 'yaml'

ucs = Ucsman::Client.new(
  {
    username: 'admin',
    password: '',
    hostname: '192.168.56.103'
  },
  false # Disable SSL Verification
)

ucs.login

pools = Ucsman::MacPool.get_all_pools(ucs)

pools.each do |pool|
  puts pool.to_yaml
end

macs = Ucsman::MacPool.get_all_macs(ucs)

macs.each do |mac|
  puts mac.to_yaml
end

puts '------------------------'

puts Ucsman::MacPool.get_mac_pool(ucs, 'org-root/mac-pool-mac-pool-1').to_yaml

ucs.logout
