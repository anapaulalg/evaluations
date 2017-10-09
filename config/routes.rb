Rails.application.routes.draw do
  root "batches#index"

  get "batches" => "batches#index"
  get "batches/new" => "batches#new", as: :new_batch
  get 'batches/:id' => 'batches#show', as: :batch

  post "batches" => "batches#create"
end
