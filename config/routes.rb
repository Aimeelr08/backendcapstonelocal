# frozen_string_literal: true
Rails.application.routes.draw do
  resources :comments
  resources :posts
  # please fix this TODO
  # root to: "posts#new"
  # root :to => "posts#index", only: [:get, :show]
  # root :to => "root#root"
# making routes to posts
  get '/posts' => 'posts#index'
  post '/posts/:id' => 'posts#edit'
  post '/posts' => 'posts#create'
  post '/posts' => 'posts#update'
  delete '/posts' => 'posts#destroy'

  # making routes to comments
  get '/comments' => 'comments#index'
  post '/comments' => 'comments#create'
  post '/comments' => 'comments#update'
  delete '/comments' => 'comments#destroy'
  # # making routes to forms
  resources :examples, except: [:new, :edit]
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  resources :users, only: [:index, :show]
end
