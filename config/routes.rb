Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "home#index"

  #basic routes to test - edit later
  get "activity_log", to: "activity_log#index", as: :activity_log
  get "home", to: "home#index", as: :home
  
  #registrations routes [new and create]
  get "sign_up", to: "registrations#new", as: :sign_up
  post "sign_up", to: "registrations#create"

  get "sign_in", to: "sessions#new"
  post "sign_in", to: "sessions#create"

  get "password", to: "passwords#edit"
  patch "password", to: "password#update"

  #destroy session to log out user
  delete "logout", to: "sessions#destroy"
  
end
