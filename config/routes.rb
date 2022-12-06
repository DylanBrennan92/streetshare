Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")

  get "activity_log", to: "activity_log#index", as: :activity_log
  get "home", to: "home#index", as: :home

  root to: "home#index"
end
