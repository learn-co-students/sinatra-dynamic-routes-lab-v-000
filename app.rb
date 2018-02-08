require_relative 'config/environment'

class App < Sinatra::Base

	get '/reversename/:name' do
		@reverse_name = params[:name].reverse
		"#{@reverse_name}"
	end

	get '/square/:number' do
		@square = params[:number].to_i ** 2 #could chain with to_s and remove interpolation
		"#{@square}"
	end

	get '/say/:number/:phrase' do
		return_string = ''
		params[:number].to_i.times do
			return_string += "#{params[:phrase]}"
		end
		return_string
	end

	get '/say/:word1/:word2/:word3/:word4/:word5' do
		"#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
	end

	get '/:operation/:number1/:number2' do
		@operation = params[:operation]
		@num1 = params[:number1].to_i
		@num2 = params[:number2].to_i
		if @operation == "add"
			"#{@num1 + @num2}"
		elsif @operation == "subtract"
			"#{@num1 - @num2}"
		elsif @operation == "multiply"
			"#{@num1 * @num2}"
		elsif @operation == "divide"
			"#{@num1 / @num2}"			
		end
	end	

end