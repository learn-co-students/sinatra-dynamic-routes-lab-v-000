require_relative 'config/environment'

class App < Sinatra::Base
	
	get '/reversename/:name' do 
		r = params[:name].reverse
		"#{r}"
	end
	
	get '/square/:number' do
		n = params[:number].to_i ** 2
		"#{n}"
	end
	
	get '/say/:number/:phrase' do 
		output = ""
		params[:number].to_i.times do
			output += "#{params[:phrase]}\n"
		end
		"#{output}"
	end
	
	get '/say/:word1/:word2/:word3/:word4/:word5' do 
		"#{params.values[1].join(" ")}."
	end
	
	get '/:operation/:number1/:number2' do 
		num1, num2 = params[:number1].to_i, params[:number2].to_i
		case params[:operation]
			when "add"
				"#{num1 + num2}"
			when "subtract"
				"#{num1 - num2}"
			when "multiply"
				"#{num1 * num2}"
			when "divide"
				"#{num1 / num2}"
			else
				"Unable to perform this operation"
			end
	end
	
end