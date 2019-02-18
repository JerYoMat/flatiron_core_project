Rails.application.routes.draw do
  root 'static_pages#home'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get '/signup', to: 'users#new'
  post '/signup', to: 'users#create'
  get 'static_pages/code_of_conduct', to: 'static_pages#code_of_conduct'
  get 'static_pages/acknowledgements', to: 'static_pages#acknnowledgements'
  get 'static_pages/about', to: 'static_pages#about'
  resources :users
  resources :tips 
  resources :units, only: [:index, :show]
  resources :lessons, only: [:show] 
  resources :ratings, only: [:new, :edit, :update, :destroy] 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
