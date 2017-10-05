# frozen_string_literal: true
Rails.application.routes.draw do
  resources :comments
  resources :posts
  # root to: "posts#new"
  # root :to => "posts#index", only: [:get, :show]
  # root :to => "root#root"
# making routes to posts
  get '/posts' => 'posts#index'
  post '/posts' => 'posts#create'
  post '/posts' => 'posts#update'
  delete '/posts' => 'posts#destroy'
  patch '/posts' => 'posts#update'
  # making routes to comments
  get '/comments' => 'comments#index'
  post '/comments' => 'comments#create'
  post '/comments' => 'comments#update'
  delete '/comments' => 'comments#destroy'
  patch '/comments' => 'comments#update'
  # # making routes to forms
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
