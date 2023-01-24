Rails.application.routes.draw do
  resources :groups do
    resources :posts
  end
  devise_for :users, controllers: {sessions: 'users/sessions', registrations: 'users/registrations'}

  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: "home#index"
  get "welcome", to: "home#welcome", as: :welcome

  get "home", to: "home#index", as: :home
  

  #group routes
  get "groups", to: "groups#index", as: :all_groups
  get "groups/new", to: "groups#new", as: :create_group
  get "group/:id", to: "groups#show", as: :show_group
  post "groups/:id/edit", to: "groups#edit"
  get "search", to: "groups#search"


  #routes for creating posts
  get "posts/new", to: "posts#new", as: :create_post
  post "posts/create", to: "home#index"


  
end
