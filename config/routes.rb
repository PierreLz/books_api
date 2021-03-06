Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :books
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :books, only: [ :index ]
    end
  end
end
