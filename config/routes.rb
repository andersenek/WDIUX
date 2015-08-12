Rails.application.routes.draw do
  devise_for :users
root to: 'rentals#index'
get '/rentals/all', to: 'rentals#all'
get '/rentals/policy', to: 'rentals#policy'
get '/rentals/confirmation', to: 'rentals#confirmation'
resources :items
resources :users do
  resources :rentals
end



end
