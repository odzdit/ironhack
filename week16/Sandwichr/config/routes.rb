Rails.application.routes.draw do

  devise_for :users, path: '',
  					 path_names: {sign_in: 'login', sign_up: 'signup'},
  					 controllers: {sessions: 'devise/sessions'}

  	root to: "sandwich_views#index"

  get 'users/:id', to: 'users#show'
resources :sandwiches, only: [:index, :show], controller: "sandwich_views"
	scope "/api" do
	  resources :ingredients
	  resources :sandwiches, except: [:new, :edit]

	post '/sandwiches/:id/ingredients/add' => 'sandwich_ingredient#add'
	end


end
