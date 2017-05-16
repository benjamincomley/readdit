Rails.application.routes.draw do
  devise_for :users
  root controller: :links, action: :index
  resources :links do
    member do
      put "like",     to: "links#upvote"
      put "dislike",  to: "links#downvote"
    end
  end
end
