Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :ram_uses,  only: [:index,:show, :create]
  root to: 'ram_uses#index'
end
