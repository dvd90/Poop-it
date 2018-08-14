Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :toilets do
    resources :bookings, only: [:show, :create, :edit, :update]
  end
  get "dashboard", to: "toilets#dashboard", as: :dashboard
end
