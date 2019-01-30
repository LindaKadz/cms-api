Rails.application.routes.draw do
  namespace :api do
    namespace :v0 do
      resources :contents, only: [:index], constraints: { format: 'json' }
    end
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth', skip: [:omniauth_callbacks]
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
