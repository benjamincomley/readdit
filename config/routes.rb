Rails.application.routes.draw do
  resources :comments
  devise_for :users
  root controller: :links, action: :index
  resources :links do
    member do
      put "like",     to: "links#upvote"
      put "dislike",  to: "links#downvote"
    end
    resources :comments
  end
end
