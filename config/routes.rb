Rently::Application.routes.draw do
  root to: 'welcome#index'
  resources :apartments
  resources :landlords
  resources :tenants
  resources :favorites
end
