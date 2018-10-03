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
  resources :trainings, only: [:index, :create] do
    member do
      get :measurements, to: 'measurements#index'
      post :measurements, to: 'measurements#create'
    end
  end
  resources :poomses, only: [:index]
  resources :video_techniques, only: [:index]
  resources :rulespdf, only: [:index]
  resources :refeering, only: [:index]
  devise_for :users
end
