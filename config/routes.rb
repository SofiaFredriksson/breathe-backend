Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create]
      resources :categories, only: [:index, :show]
      resources :activities, only: [:index, :show, :create]
      resources :reflections

      post "/login", to: "auth#login"

      get "/auto_login", to: "auth#get_current_user"
    end
  end
end
