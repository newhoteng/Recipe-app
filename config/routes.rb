Rails.application.routes.draw do
  devise_for :users
  resources :foods
  get 'general_shopping_list', to: 'users#shopping'
  resources :users do
    resources :recipes do
    end
  end
  root "foods#index"
end
