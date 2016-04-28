Rails.application.routes.draw do
  devise_for :users
  resources :pins do
    member do
      put "like", to: "pins#upvote"
      put "dislike", to: "pins#downvote"
    end
  end
  root to: "pins#index"
end
