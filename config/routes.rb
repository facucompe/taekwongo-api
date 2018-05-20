Rails.application.routes.draw do
  devise_for :users
  root to: 'application#index'

  resources :users, only: [] do
    collection do
      resources :sessions, only: [:create] do
        collection do
          post :invalidate_all
        end
      end
    end
  end
end