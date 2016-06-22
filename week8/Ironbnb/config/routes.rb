Rails.application.routes.draw do
root 'site#home'
get '/become-a-host' => 'site#host'
get '/help' => 'site#help'
get '/sign-up' => 'site#signup'
get '/log-in' => 'site#login'
end
