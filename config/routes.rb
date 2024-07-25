Rails.application.routes.draw do
  post 'add_to_favourites', to: 'favourites#add_to_favourites'
  delete 'remove_from_favourites', to: 'favourites#remove_from_favourites'
  resources :favourites
  resources :ingredients
  resources :tags
  resources :recipes
  resources :menus do
    collection do
      post 'create_random_menu'
    end
  end
  devise_for :users
  root to: "pages#home"
  get '/dashboard', to: 'pages#dashboard'
end
