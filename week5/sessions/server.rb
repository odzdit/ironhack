require "sinatra"
require "sinatra/reloader" if development?
require "pry"
enable(:sessions)

users = {
	dieter: "hello",
	aldo: "hola"
}

get "/login" do
  erb(:login)
end

get "/userpage" do
  @page_user_info = session[:user_info]
  erb(:userpage)
	end

post "/login_validator" do
	@username = params[:username]
	@password = params[:password]

	if users.has_key?(@username.to_sym) && @password == users[@username.to_sym]

		session[:current_users] = @username
		redirect to("/userpage")
	else
		redirect to ("/login")
	end
end
 