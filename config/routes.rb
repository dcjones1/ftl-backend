Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :games
      resources :levels
      resources :players
      resources :ships
      resources :crew
      resources :weapons
    end
  end
end
