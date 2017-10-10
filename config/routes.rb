Rails.application.routes.draw do
  get 'pages/home'

  root to: 'pages#home'
  devise_for :users
  root "batches#index"

  resources :batches do
      resources :students, :only => [:create, :new, :destroy, :show]
  end
end
