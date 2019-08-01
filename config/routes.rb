Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :comments
  get 'pages/info'
  get 'pages/vodny_plan'
  root to: redirect('pages/vodny_plan')
  resources :ideas, only: [:show, :index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
