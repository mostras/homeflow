Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "users/:id/details", to: 'users#details', as: 'user_details'

  authenticate :user, lambda { |u| u.constructor? } do
    resources :users , only: [:index]
  end

  resources :users, only: [:show] do
    resources :documents, only: [:index, :new, :create]
  end

  resources :jobs, only: [:index, :show] do
    patch :completed, on: :member
    patch :not_completed, on: :member
    resources :tasks, only: [ :show, :new, :create]
  end

  resources :documents, only: [:index, :show, :new, :create, :destroy]

end
