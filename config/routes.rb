Rails.application.routes.draw do
  devise_for :users
  root "publics#index"
  resources :recipes, only: [:index, :show, :new, :destroy, :create, :update] do
    resources :recipe_foods, only: [:new, :create, :destroy, :edit, :update]
  end
  get "/shopping_list", to: "foods#shopping_list"
  resources :foods, only: [:index, :new, :create, :destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
end
