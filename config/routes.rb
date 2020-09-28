Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users, only: [:new, :create, :show]
  resources :events
  root 'users#index'
  get '/login' => 'sessions#new'
  post '/logup' => 'sessions#create'
  post '/register' => 'events#register'
  delete '/logout' => 'sessions#destroy'
end

