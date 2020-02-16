Rails.application.routes.draw do
  get 'articles/index'
  root controller: :articles, action: :index
  resources :articles, only: [:index, :show, :new, :edit, :destroy]

  post 'articles/new'
  resources :articles, only: [:new, :create]

  post 'articles/edit'
  resources :articles, only: [:edit, :update]

  post 'articles/destroy'
  resources :articles, only: [:destroy, :delete]
end