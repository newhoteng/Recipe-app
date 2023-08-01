Rails.application.routes.draw do
  devise_for :users
  get 'user/index'
  get 'user/show'
  resources :foods
  resources :users do
    resources :recipes do
      resources :recipe_foods, only: [:new, :create, :destroy, :update, :edit]
    end
  end
  root "recipes#public"
end
