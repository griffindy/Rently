Rently::Application.routes.draw do
  root to: 'welcome#index'
  resources :apartments
  resources :landlords
  resources :tenants do
    resources :favorites
  end
  resource :dashboard, only: [:show]
end
