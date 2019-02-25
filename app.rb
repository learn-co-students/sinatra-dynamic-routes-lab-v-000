require_relative 'config/environment'
class App < Sinatra::Base
    # Write your code here!
	get "/reversename/:name" do
		@phrase = params[:name]
		"#{@phrase.reverse}"
	end

	get "/square/:number" do
		@number = params[:number]
		"#{Integer(@number) * Integer(@number)}"
	end

	get "/say/:number/:phrase" do
		@number = Integer(params[:number])
		@phrase = params[:phrase]
		erb :say_phrase
	end
	get "/say/:word1/:word2/:word3/:word4/:word5" do
		@phrase = params.collect {|k,v| v if k.start_with?("word")}.join(" ")
		@phrase << "."
		"#{@phrase}"
	end
	get "/:operation/:number1/:number2" do
		@num1, @num2 = Integer(params[:number1]), Integer(params[:number2])
		case params[:operation]
		when "add"
			"#{@num1 + @num2}"
		when "subtract"
			"#{@num1 - @num2}"
		when "multiply"
			"#{@num1 * @num2}"
		when "divide"
			"#{@num1 / @num2}"
		end
	end
end