Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'movies#index'
  resources :lists, only: %i[index show new create]
  resources :movies, only: %i[index show]
end
