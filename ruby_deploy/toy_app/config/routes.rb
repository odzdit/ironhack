Rails.application.routes.draw do
  
  resources :users
  
root 'application#hello'

end
