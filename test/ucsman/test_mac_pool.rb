require 'test_helper'

class UcsmanTest < Minitest::Test
  def setup
    @ucs = Ucsman::Client.new(
      {
        username: 'admin',
        password: '',
        hostname: '192.168.56.103',
        verify_ssl: false
      }
    )
    @ucs.login
  end

  def teardown
    @ucs.logout
  end

  def test_responds_to_all_macs
    assert(MacPool.method_defined? 'all_macs')
  end

  def test_responds_to_all_pools
    assert(MacPool.method_defined? 'all_pools')
  end

  def test_responds_to_mac_pool
    assert(MacPool.method_defined? 'mac_pool')
  end
end
