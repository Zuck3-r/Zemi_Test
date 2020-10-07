Rails.application.routes.draw do
  resources :registers
  root to: 'registers#index'
end
