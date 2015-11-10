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

ucs.mac_pool.all_pools.each do |pool|
  puts pool.to_yaml
end

ucs.mac_pool.all_macs.each do |mac|
  puts mac.to_yaml
end

puts ucs.mac_pool.mac_pool(
  'org-root/mac-pool-mac-pool-1'
).to_yaml

ucs.logout
