Rails.application.routes.draw do
  root to: 'batches#index'
  resources :pages
  devise_for :users

  resources :batches do
      resources :students, :only => [:create, :new, :destroy, :show, :edit]
  end
end
