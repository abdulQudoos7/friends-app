Rails.application.routes.draw do
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
