Rails.application.routes.draw do
  root 'static_pages#home'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  resources :users
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get 'static_pages/code_of_conduct', to: 'static_pages#code_of_conduct'
  get 'static_pages/credits', to: 'static_pages#credits'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
