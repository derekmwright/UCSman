require 'nokogiri'
require 'rest-client'
require 'active_support/core_ext/hash/conversions'
require 'active_support/core_ext/string/inflections'

# This Module is for aiding in the automation
# of UCS components.
module Ucsman
  # Your code goes here...
  require 'ucsman/version'
  require 'ucsman/client'
  require 'ucsman/request'
  require 'ucsman/mac_pool'
end
