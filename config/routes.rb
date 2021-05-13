Rails.application.routes.draw do
  devise_for :users
  root 'home#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :projects
  resources :groups
  resources :logs

  get '/external', to: 'projects#external'
  get '/landing', to: 'home#landing'
end
