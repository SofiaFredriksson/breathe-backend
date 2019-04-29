Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:index, :show, :create]
      resources :categories, only: [:index, :show]
      resources :activities, only: [:index, :show, :create]
      resources :reflections, only: [:index, :show, :create, :delete]

      post "/login", to: "auth#login"
    end
  end
end
