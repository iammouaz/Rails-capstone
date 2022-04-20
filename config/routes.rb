Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  
  resources :groups, only: [:index, :new, :create] do
    resources :investments, only: [:index, :new, :create, :destroy]
  end

  root to: 'splash#index'
end
