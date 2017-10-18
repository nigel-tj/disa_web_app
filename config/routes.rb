Rails.application.routes.draw do
  devise_for :admins
  resources :conditions
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "conditions#index"
end
