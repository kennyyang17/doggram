Rails.application.routes.draw do
  get '/signin', to: 'sessions#signin'
  get '/signout', to: 'sessions#signout'
  get '/users/signup', to: 'users#signup'

  resources :sessions, only: :create
  resources :users, except: :new
  resources :pictures, :comments, :tags, :picture_tags
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
