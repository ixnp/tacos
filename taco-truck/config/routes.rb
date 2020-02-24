Rails.application.routes.draw do
  resources :trucks
  # get "/tacos", to: "tacos#index"
  #get "/tacos/:id", to "tacos#shows"
  resources :tacos, only: [:index, :show, :edit, :update]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
