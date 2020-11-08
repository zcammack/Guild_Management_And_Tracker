Rails.application.routes.draw do
  
  resources :campaigns
  resources :characters
  devise_for :admins
  devise_for :users, :controllers => { registrations: 'registrations', omniauth_callbacks: 'callbacks' }
 
# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'application#welcome'

  
end
