Rails.application.routes.draw do
  root 'lists#index'
  resources :lists do
    resources :bookmarks, only: [:index, :new, :create, :show, :destroy]
  end
  resources :bookmarks, only: :destroy
end
