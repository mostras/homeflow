Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :user, only: [:index, :new, :create]


  authenticate :user, ->(u) { u.constructor } do
    get '/jobs', to: 'jobs#index_constructor'
    get '/jobs/:id', to: 'jobs#show_constructor'
    resources :jobs, only: [] do
      get '/tasks', to: 'tasks#index_constructor'
      get '/tasks/:id', to: 'tasks#show_constructor'
      get '/tasks/new', to: 'tasks#new'
      post '/tasks', to: 'tasks#create'
    end
  end

  resources :jobs, only: [:index, :show] do
    resources :tasks, only: [:index, :show]
  end

  resources :documents, only: [:index, :show, :new, :create, :destroy]

end
