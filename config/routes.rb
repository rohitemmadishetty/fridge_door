Rails.application.routes.draw do
  devise_for :users
  resources :weather
  resources :todos
  resources :notes
  
  get "/trends", to: "walmart#index", as: 'trends'
  
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
