Rently::Application.routes.draw do
  root to: 'welcome#index'
  resources :apartments
  resource :dashboard, only: [:show]
  resources :users, only: [:create] do
    resource :favorite, only: [:create]
  end
end
