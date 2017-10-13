Rails.application.routes.draw do
  root to: 'batches#index'
  resources :pages
  devise_for :users

  resources :batches do
      get 'askquestion', to: 'batches#ask_question'
      resources :students do
        resources :dailyevaluations
    end
  end
end
