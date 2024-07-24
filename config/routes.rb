Rails.application.routes.draw do
  resources :matches
  resources :players
  get 'teams/index'
  get 'teams/show'
  get 'teams/new'
  get 'teams/edit'
  get 'teams/create'
  get 'teams/update'
  get 'teams/destroy'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :teams
  resources :players
end
