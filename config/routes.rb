Rails.application.routes.draw do
  get 'members/show', to: 'members#show'
  resources :apos
end
