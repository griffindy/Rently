Rently::Application.routes.draw do
  root to: 'welcome#index'
  resources :apartments
end
