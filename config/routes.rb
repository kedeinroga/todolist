Rails.application.routes.draw do
  root to: 'tasks#index'
  resources :tasks, only: %i[create new edit update destroy] do
    member do
      patch :complete
    end
  end
  # resources :tasks
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
