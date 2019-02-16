Rails.application.routes.draw do
  resources :users
  root 'static_pages#home'
  get 'static_pages/code_of_conduct', to: 'static_pages#code_of_conduct'
  get 'static_pages/credits', to: 'static_pages#credits'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
