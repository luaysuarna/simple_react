Rails.application.routes.draw do
  resources :todos
  resources :todos
  root 'todos#index'
end
