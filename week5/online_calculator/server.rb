require "sinatra"
require "sinatra/reloader" if development?
require_relative("lib/calculator")
require "pry"
# enable 
enable(:sessions)


calc = Calculator.new

get "/" do
  erb(:home)
end


post "/result" do
	first = params[:first_number].to_f
  	second = params[:second_number].to_f 
  	operation = params["operation"] # => "addition"
  	@result = 0
  	if operation == "addition"
  		  @result = calc.add(first, second)
	elsif operation == "substraction"
		  @result = calc.substract(first, second)
	elsif operation == "multiplication"
		  @result = calc.multiply(first, second)
	else operation == "division"
		  @result = calc.divide(first, second)
		end

	erb(:result)
end


get "/session_test/:test" do
	text = params[:test]
	session[:saved_value] = text
end

get "/session_show" do
 @my_text = session[:saved_value]
 erb(:session_show)
end

# post "/calculate_add" do
#   first = params[:first_number].to_f
#   second = params[:second_number].to_f
#   # result = first + second
#   result = calc.add(first, second)
#   "#{first} + #{second} = #{result}"
# end

# post "/calculate_substract" do
#   first = params[:first_number].to_f
#   second = params[:second_number].to_f
#   # result = first - second
#    result = calc.substract(first, second)
#   "#{first} - #{second} = #{result}"
# end

# post "/calculate_multiply" do
#   first = params[:first_number].to_f
#   second = params[:second_number].to_f
#   # result = first * second
#    result =  calc.multiply(first, second)
#   "#{first} * #{second} = #{result}"
# end

# post "/calculate_divide" do
#   first = params[:first_number].to_f
#   second = params[:second_number].to_f
#   # result = first / second
#    result =  calc.divide(first, second)
#   "#{first} / #{second} = #{result}"
# end