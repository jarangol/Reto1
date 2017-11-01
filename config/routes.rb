Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  mount ActionCable.server => '/cable'

  resources :ram_uses,  only: [:index,:show, :create]
  root to: 'ram_uses#index'
end
