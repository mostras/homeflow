Rails.application.routes.draw do
  devise_for :users


  get "users/:id/details", to: 'users#details', as: 'user_details'

  authenticate :user, lambda { |u| u.constructor? } do
    resources :users, only: [:index] do
      patch :stop_work, on: :member
      patch :resume_work, on: :member
    end
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
    resources :tasks, only: [:new, :create]
  end
  resources :tasks, only: [:show]

  resources :documents, only: [:index, :show, :new, :create, :destroy]

  # devise_scope :user do
  #   root to: "devise/sessions#new"
  # end

  root to: "pages#home"
end
