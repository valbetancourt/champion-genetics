Rails.application.routes.draw do
  get 'horses/index'
  get 'horses/new'
  get 'horses/create'
  get 'horses/show'
  get 'horses/edit'
  get 'horses/update'
  get 'horses/destroy'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :horses
  resources :sales, only: [:new, :create]
end
