Rails.application.routes.draw do
  devise_for :users
root to: 'rentals#index'

get '/rentals', to: 'rentals#index'
resources :users do
  resources :rentals
end



end
