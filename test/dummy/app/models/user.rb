class User < ApplicationRecord
    acts_as_authenticator :id
end
