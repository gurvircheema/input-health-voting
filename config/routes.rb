Rails.application.routes.draw do
  resources :feature_requests do
    resource :request, only: [:create]
  end
  root to: 'feature_requests#index'
  devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
