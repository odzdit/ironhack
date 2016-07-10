Rails.application.routes.draw do

resources :music_concerts do
  resources :comments 
  end

get '/search' => 'music_concerts#search'
get '/search_results' => 'music_concerts#search_results'
end
