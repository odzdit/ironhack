Rails.application.routes.draw do
get '/' => 'site#home'
get '/contact' => 'site#contact'
get '/projects' => 'projects#index'
post '/projects' => 'projects#create'
get '/projects/new' => 'projects#new'
get '/projects/:id' => 'projects#show'
end
