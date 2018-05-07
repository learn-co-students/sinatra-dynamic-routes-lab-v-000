require_relative 'config/environment'

class App < Sinatra::Base
  
  	get '/reversename/:name' do
  		@name = params[:name].reverse
  		"#{@name}"
	end

	get '/square/:number' do
		@answer = params[:number].to_i * params[:number].to_i
		"#{@answer}"
	end

	get '/say/:number/:phrase' do
		@num = params[:number].to_i
		@phrase = params[:phrase]
		"#{@phrase}" * @num
	end

	get '/say/:word1/:word2/:word3/:word4/:word5' do
		@one = params[:word1] 
		@two = params[:word2]
		@three = params[:word3]
		@four = params[:word4]
		@five = params[:word5]
		"#{@one} #{@two} #{@three} #{@four} #{@five}."
	end

	get '/:operation/:number1/:number2' do
		@num1 = params[:number1].to_i
		@num2 = params[:number2].to_i
		@op = params[:operation]
		if @op == "add"
			"#{@num1 + @num2}"
		elsif @op == "subtract"
			"#{@num1 - @num2}"
		elsif @op == "multiply"
			"#{@num1 * @num2}"
		elsif @op == "divide"
			"#{@num1 / @num2}"
		end
	end

end