Rails.application.routes.draw do
  root "batches#index"

  resources :batches do
      resources :students, :only => [:create, :new, :destroy, :show]
  end
end
