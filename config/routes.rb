Rails.application.routes.draw do
  get 'scratch/back'
  resources :books
  resources :authors
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'scratch#back'
end
