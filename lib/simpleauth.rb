require "simpleauth/version"
require "simpleauth/engine"
require "simpleauth/acts_as_authenticator"
require "simpleauth/authenticatable"

module Simpleauth
  mattr_accessor :authenticator_class

  def self.authenticated?(session)
    if session[:simpleauth_current_authenticatee_id]
        return true
    end

    false
  end

  def self.current_authenticatee
      Simpleauth.authenticator_class.find_by(Simpleauth.authenticator_class.simpleauth_id => session[:simpleauth_current_authenticatee_id])
  end

  def self.current_authenticatee=(authenticatee)
      session[:simpleauth_current_authenticatee_id] = authenticatee[Simpleauth.authenticator_class.simpleauth_id]
  end
end
