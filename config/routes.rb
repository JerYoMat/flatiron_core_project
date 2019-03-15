Rails.application.routes.draw do
  root 'static_pages#home'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  post '/login_remote', to: 'sessions#remote_login'
  delete '/logout',  to: 'sessions#destroy'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get 'static_pages/code_of_conduct', to: 'static_pages#code_of_conduct'
  get 'static_pages/acknowledgements', to: 'static_pages#acknowledgements'
  get 'static_pages/about', to: 'static_pages#about'
  get 'topics/:id/tips', to: 'topics#topic_tips'
  get 'units/:id/topics', to: 'topics#index'
  get 'units/:id/first_call', to: 'units#setup_unit'
  get 'units/count', to: 'units#unit_max_min'
  resources :users
  resources :tips 
  resources :units
  resources :lessons, only: [:show] 
  resources :ratings, only: [:new, :edit, :update, :destroy] 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
