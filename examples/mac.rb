require 'ucsman'
require 'yaml'

ucs = Ucsman::Client.new(
  {
    username: 'admin',
    password: '',
    hostname: '192.168.56.103',
    verify_ssl: false
  }
)

ucs.login

ucs.macpool.all_pools.each do |pool|
  puts pool.to_yaml
end

ucs.macpool.all_macs.each do |mac|
  puts mac.to_yaml
end

puts ucs.macpool.mac_pool(
  'org-root/mac-pool-mac-pool-1'
).to_yaml

ucs.logout
