require_relative 'config/environment'

class App < Sinatra::Base

	get '/reversename/:name' do
		name = params[:name]
		reverse = name.reverse
		"#{reverse}"
	end

	get '/square/:number' do
		number = params[:number].to_i
		square = number*number
		"#{square}"
	end

	get '/say/:number/:phrase' do 
		number = params[:number].to_i
		phrase = ""

		number.times do 
			phrase += "#{params[:phrase]}\n"
		end

		"#{phrase}"
	end

	get '/say/:word1/:word2/:word3/:word4/:word5' do
		word1 = params[:word1]
		word2 = params[:word2]
		word3 = params[:word3]
		word4 = params[:word4]
		word5 = params[:word5]
		"#{word1} #{word2} #{word3} #{word4} #{word5}."
	end

	get '/:operation/:number1/:number2' do
		operation = params[:operation]
		number_1 = params[:number1].to_i
		number_2 = params[:number2].to_i

		case operation
		when "add"
			operated_number = number_1 + number_2
		when "subtract"
			operated_number = number_1 - number_2
		when "multiply"
			operated_number = number_1 * number_2
		when "divide"
			operated_number = number_1/number_2
		end
		"#{operated_number}"
	end
end