module Simpleauth
    module Authentication
        def authenticated?
            if session[:simpleauth_current_authenticatee_id]
                return true
            end

            false
        end

        def current_authenticatee
            Simpleauth.authenticator.find_by(Simpleauth.authenticator_class.simpleauth_id => session[:simpleauth_current_authenticatee_id])
        end

        def current_authenticatee=(authenticatee)
            session[:simpleauth_current_authenticatee_id] = authenticatee[Simpleauth.authenticator_class.simpleauth_id]
        end
    end
end
