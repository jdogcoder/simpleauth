Rails.application.routes.draw do
  mount Simpleauth::Engine => "/simpleauth"

  get 'pages/login'

  get 'pages_auth/authenticated'
end
