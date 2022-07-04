Rails.application.routes.draw do
  authenticated :user, ->(user){user.admin?} do
    
  get 'admin', to: 'admin#index'
  get 'admin/friends'
  get 'admin/comments'
  get 'admin/show_post'

  end


  resources :search, only: [:index]

  namespace :admin do
    resources :users
  end

  devise_for :users
  # resources :friends
  resources :friends do
    resources :comments
  end
  # get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"

end
