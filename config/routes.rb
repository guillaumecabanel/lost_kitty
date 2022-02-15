Rails.application.routes.draw do
  resources :pets, only: [:index, :show, :new, :create]
end
