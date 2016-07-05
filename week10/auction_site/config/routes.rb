Rails.application.routes.draw do



get '/products' => 'products#index'
get '/products/new' => 'products#new' 


end
