module Simpleauth
  class AuthenticationsController < ApplicationController
    def new
    end

    def create
      user = User.find_by(email: authentication_params[:email])
      Simpleauth.current_authenticatee = user
    end

    def destroy
    end

    private

    def authentication_params
      params.require(:authentication).permit(:email)
    end
  end
end
