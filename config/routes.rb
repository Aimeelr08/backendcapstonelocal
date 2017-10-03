# frozen_string_literal: true
Rails.application.routes.draw do
  resources :comments
  # root to: "posts#index"
  resources :posts
  # root to: "posts#new"
  # root :to => "posts#index", only: [:get, :show]
  # root :to => "root#root"


  get 'posts' => 'posts'
  get 'comments' => 'comments'

  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
