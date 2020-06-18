Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    root to: "devise/sessions#new"
  end

  get "users/:id/details", to: 'users#details', as: 'user_details'

  authenticate :user, lambda { |u| u.constructor? } do
    resources :users, only: [:index]
  end

  authenticate :user, lambda { |u| !u.constructor? } do
    resources :jobs, only: [:index]
  end

  resources :users, only: [:show] do
    resources :documents, only: [:index, :new, :create]
  end

  resources :jobs, only: [:show] do
    patch :completed, on: :member
    patch :not_completed, on: :member
    resources :tasks, only: [ :show, :new, :create]
  end

  resources :documents, only: [:index, :show, :new, :create, :destroy]

end
