Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root to: 'admin/dashboard#index'
  
  resources :users, only: [:create] do
    collection do
      resources :sessions, only: [:create] do
        collection do
          post :invalidate_all
        end
      end
    end
  end
  resources :feeds, only: [:index]
  resources :competitions, only: [:index]
  resources :poomses, only:[:index]
  devise_for :users
end
