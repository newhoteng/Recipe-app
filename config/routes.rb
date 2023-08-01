Rails.application.routes.draw do
  devise_for :users
  resources :foods
  resources :users do
    resources :recipes do
    end
  end
  root "foods#index"
end
