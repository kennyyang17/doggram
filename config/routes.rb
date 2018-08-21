Rails.application.routes.draw do
  resources :users, :pictures, :comments, :tags, :picture_tags
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
