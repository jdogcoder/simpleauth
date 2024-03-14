require "simpleauth/version"
require "simpleauth/engine"
require "simpleauth/acts_as_authenticator"
require "simpleauth/authenticatable"

module Simpleauth
  mattr_accessor :authenticator_class

end
