Rails.application.routes.draw do
  namespace :api, constraints: {format: 'json'} do
    namespace :v1 do
      resources :albums
      resources :genres, only: [:index, :show]
      resources :artists, only: [:index, :show]
      get 'albums/filters/years' => 'years#index'
    end
  end
end
