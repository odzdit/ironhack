Rails.application.routes.draw do
  get "/" => "links#new"
  get "/links/:id" => "links#show"
  post "/links" => "links#create", as: :links
  get "/:shortlink" => "links#index"
end
