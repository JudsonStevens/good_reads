Rails.application.routes.draw do
  resources :books, only: [:show] do
    resources :reviews, only: [:new, :create]
  end
end
