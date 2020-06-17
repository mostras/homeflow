Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: [:index, :show, :new, :create]

  resources :jobs, only: [:index, :show] do
    resources :tasks, only: [ :show, :new, :create]
  end



  resources :documents, only: [:index, :show, :new, :create, :destroy]

end
