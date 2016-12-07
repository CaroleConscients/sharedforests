Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'cesium', to: 'cesium#index'

  resources :certificates, except: :destroy do
    resources :payments, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


