Rails.application.routes.draw do
  resources :ama1s
  resources :careyouals
  resources :careyouallls
  resources :line
  resources :push_messages
  get 'push/messages'
  get '/cron', to: 'cron#run'
  root to: 'cron#health'
  post '/line/webhook', to: 'line#webhook'
  resources :careyoualls
  resources :care_yous
  resources :careyous
  resources :testabcs
  resources :keyword_mappings
  resources :push_messages, only: [:new, :create]
  post 'line/webhook'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
