Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "sessions#new"
  get 'secrets' => 'secrets#show', as: 'secrets' 
  resource :sessions, only: [:new, :create, :destroy]
  post 'logout' => 'sessions#destroy'
end
