Rails.application.routes.draw do
  get '/' => 'site#home'
  get '/urls' => 'urls#index'
  get '/:shortlink' => 'shorterly#shortlink'
end
