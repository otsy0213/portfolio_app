Rails.application.routes.draw do

  resources :companies
  resources :members
  resources :apos

  get    '/login',   to: 'member_sessions#new'
  post   '/login',   to: 'member_sessions#create'
  delete '/logout',  to: 'member_sessions#destroy'
end
