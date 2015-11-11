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

  def test_that_it_initialized
    assert_instance_of(Ucsman::Client, @ucs)
  end

  def test_that_it_is_logged_in
    assert(@ucs.logged_in?)
    puts @ucs.logged_in?
  end

  def test_that_it_resoinds_to_system
    assert_respond_to(@ucs, 'system')
  end

  def test_that_it_responds_to_macpool
    assert_respond_to(@ucs, 'macpool')
  end

  def test_that_it_responds_to_wwnnpool
    assert_respond_to(@ucs, 'wwnnpool')
  end

  def test_that_it_responds_to_wwpnpool
    assert_respond_to(@ucs, 'wwpnpool')
  end
end
