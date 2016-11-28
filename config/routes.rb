Rails.application.routes.draw do
  resources :parcels do
    resources :certificates, only: [:new, :create, :edit, :update]
  end
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


