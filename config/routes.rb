Rails.application.routes.draw do
  devise_for :users
  root controller: :links, action: :index
  resources :links
end
