Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'public_recipes#index'
  resources :recipes, only: [:index, :new, :show, :create, :destroy] do
    resources :recipe_foods, only: [:create, :destroy]
  end
  resources :foods, only: [:index, :new, :create, :destroy]
  resources :public_recipes, only: [:index]
  resources :shopping_list, only: [:index]
end
