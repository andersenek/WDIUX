Rails.application.routes.draw do
  devise_for :users
root to: 'rentals#index'
resources :items
resources :users do
  resources :rentals
end



end
