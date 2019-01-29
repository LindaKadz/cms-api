Rails.application.routes.draw do
  namespace :api do
    namespace :v0 do
      resources :contents, only: [:index], constraints: { format: 'json' }
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
