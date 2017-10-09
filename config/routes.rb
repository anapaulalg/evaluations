Rails.application.routes.draw do
  root "batches#index"
  get "batches" => "batches#index"
end
