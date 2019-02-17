Rails.application.routes.draw do
  mount ActionCable.server => '/cable'

  root "static_pages#home"
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/signup', to: "users#new"
  resources :users do
    resources :messages
    resources :rooms
  end
  resources :rooms
end
