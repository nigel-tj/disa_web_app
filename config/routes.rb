Rails.application.routes.draw do
  resources :diagnosed_patients
  resources :diseases
  devise_for :admins
  resources :conditions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/diseases/:id/overall', to: 'diseases#overall'
  root to: "home#index"
end
