Rails.application.routes.draw do
  resources :categories
  get "archives/index"
  resources :entries
  root to: "entries#index"
  get "up" => "rails/health#show", as: :rails_health_check
end
