Rails.application.routes.draw do

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # resources :buttons, only: :index do
  #   resources :votes, only: [:create]
  # end
  resources :buttons
  root 'buttons#index'
  get '/increase', to:'buttons#increase'
end
