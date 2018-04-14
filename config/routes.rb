Rails.application.routes.draw do
  root to: 'application#index'

  mount Sidekiq::Web, at: 'sidekiq'

  resources :feed_entries, only: [:index]

  get 'feed_entries/todo', to: 'feed_entries#todo'
end
