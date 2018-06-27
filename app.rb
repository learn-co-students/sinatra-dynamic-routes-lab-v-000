require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  	get '/reversename/:name' do
   		@reverse_name = @params[:name].reverse
   		"#{@reverse_name}"
	end

	get '/square/:number' do
		"#{params[:number].to_i * params[:number].to_i}"
	end

	get '/say/:number/:phrase' do
		@phrase = ""
		@number = params[:number].to_i
		@number.times do
			@phrase << " #{params[:phrase]}"
		end
		"#{@phrase}"
	end

	get '/say/:word1/:word2/:word3/:word4/:word5' do
		"#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
	end

	get '/:operation/:number1/:number2' do
		num1 = params[:number1].to_i
		num2 = params[:number2].to_i
		@answer = nil

		case params[:operation]
		when "add"
			@answer = num1 + num2
		when "subtract"
			@answer = num1 - num2
		when "multiply"
			@answer = num1 * num2
		when "divide"
			@answer = num1 / num2
		else
			"Your input was not understood!"
		end
	"#{@answer}"
	end
end
