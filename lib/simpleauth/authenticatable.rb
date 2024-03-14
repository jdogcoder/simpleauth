module Simpleauth
  module Authenticatable
    extend ActiveSupport::Concern

    included do
      before_action :ensure_authenticated
    end

    def ensure_authenticated
      if !Simpleauth::Authentication.authenticated?
        flash[:alert] = "You need to login to view that page."
        redirect_to new_user_authentication_path
      end
    end
  end
end
