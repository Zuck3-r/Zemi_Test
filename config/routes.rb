Rails.application.routes.draw do
  resources :users
  get "users/:id/in_time" => "users#in_time"
  get "users/:id/puch_in_time" => "users#punch_in_time"
  root to: 'users#index'
end
