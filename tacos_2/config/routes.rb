Rails.application.routes.draw do
  resources :truck

  resources :tacos, only: [:index, :show, :edit, :update, :new, :create]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
