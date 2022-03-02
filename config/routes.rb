Rails.application.routes.draw do
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :investments
  resources :groups
  resources :group_investments

  root to: 'groups#index'
end
