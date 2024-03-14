module Authenticator
  module ActsAsAuthenticator
    extend ActiveSupport::Concern

    class_methods do
      def acts_as_authenticator(id, options = {})
       cattr_accessor :simpleauth_id, default: id.to_sym
      end
    end

    included do
      def authenticate
        # TODO: authenticate them?
        Simpleauth::Authentication.current_authenticatee = self
      end
    end
  end
end
