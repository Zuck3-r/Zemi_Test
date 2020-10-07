Rails.application.routes.draw do
  resources :registers
  delete 'users/:id' => 'registers#destroy'
  root to: 'registers#index'
end
