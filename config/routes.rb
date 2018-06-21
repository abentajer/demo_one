Rails.application.routes.draw do
  resources :comments
  resources :users
  resources :articles
  root 'welcome#home'
  get 'me', to: 'welcome#home'
  get 'welcome/about', to: 'welcome#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
