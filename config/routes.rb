Rails.application.routes.draw do
  resources :plannings
  resources :interviews
  resources :patients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'patients#index'
end
