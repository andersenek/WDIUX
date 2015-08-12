Rails.application.routes.draw do
  devise_for :users
root to: 'rentals#index'
get '/rentals/all', to: 'rentals#all'
get '/rentals/policy', to: 'rentals#policy'
resources :items
resources :users do
  resources :rentals
end



end
