Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :horses do
    resources :sales, only: %i[create]
  end

  get "my_sales", to: "sales#my_sales"
end
