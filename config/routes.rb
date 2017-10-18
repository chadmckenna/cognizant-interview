Rails.application.routes.draw do
  namespace :api, constraints: {format: 'json'} do
    namespace :v1 do
      resources :albums
      resources :genres, only: [:index, :show, :create]
      resources :artists, only: [:index, :show, :create]
      get 'albums/filters/years' => 'years#index'
    end
  end
end
