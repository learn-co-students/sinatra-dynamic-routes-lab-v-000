require_relative 'config/environment'

class App < Sinatra::Base
	
	get "/reversename/:name" do
		@name = params[:name]
		"#{@name.reverse}"
	end
	
	get "/square/:number" do
		@num = params[:number].to_f
		"#{@num**2}"
	end
	
	get "/say/:number/:phrase" do
		@num = params[:number].to_i
		@phrase = params[:phrase]
		@total = ""
		@num.times do
			@total << @phrase + "\n"
		end
		"#{@total}"	
	end
	
	get "/say/:word1/:word2/:word3/:word4/:word5" do
		@sentence = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
		"#{@sentence}"
	end
	
	get "/:operation/:number1/:number2" do
		@operation = params[:operation]
		@num1 = params[:number1].to_f
		@num2 = params[:number2].to_f
		case @operation
			when "add" then "#{@num1 + @num2}"
			when "subtract" then "#{@num1 - @num2}"
			when "divide" then "#{@num1 / @num2}"
			when "multiply" then "#{@num1*@num2}" 
		end
	end
end