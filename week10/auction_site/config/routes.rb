Rails.application.routes.draw do


  resources :users do
  	resources :products
  end

# get '/products' => 'products#index'
# get '/products/new' => 'products#new' 

get '/products_all' => 'products#all'
get '/products/:id/bid' => 'bids#create', as: :product_bids
end
