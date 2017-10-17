Rails.application.routes.draw do
  resources :albums
  resources :genres
  resources :artists
  resources :years, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
