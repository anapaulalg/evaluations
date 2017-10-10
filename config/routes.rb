Rails.application.routes.draw do
  devise_for :users
  root "batches#index"

  resources :batches do
      resources :students, :only => [:create, :new, :destroy, :show]
  end
end
