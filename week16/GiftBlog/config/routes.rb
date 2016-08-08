Rails.application.routes.draw do
 
 # get '/posts/new' => 'posts#new'
 # post 'posts' => 'post#create'
 # get 'posts' => 'posts#index', as: :posts

post 'posts/:id/upvote' => 'posts#upvote'
post 'posts/:id/downvote' => 'posts#downvote'

 	resources :posts, only: [:index, :new, :create, :show]  


 end
