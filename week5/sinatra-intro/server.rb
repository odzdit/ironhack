require "sinatra"

get "/" do 
	"My first Sinatra app"
end

get "/about" do 
	erb :about
end

get "/hi" do 
	@greeting = "Hello World"
	erb :hi
end

get "/pizza" do 
	@ingredients = ["pepperoni", "sausage", "peppers", "mushrooms"]
	erb :pizza
end

get "/time" do 
	@time = Time.now
	erb :time
end