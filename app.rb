require_relative 'config/environment'

class App < Sinatra::Base

	get '/reversename/:name' do
		@name = params[:name]
		"#{@name.reverse}"	
	end

	get '/square/:number' do
		@num = params[:number]
		@num = @num.to_i ** 2
		@num.to_s
	end

	get '/say/:number/:phrase' do
		@num = params[:number]
		@phrase = params[:phrase]
		@num = @num.to_i
		string = ""
		@num.times do
			string += "#{@phrase}\n"
		end
		string
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
		num1 = params[:number1]
		num2 = params[:number2]

		if operation == 'add'
			result = num1.to_i + num2.to_i
		elsif operation == 'subtract'
			result = num1.to_i - num2.to_i
		elsif operation == 'multiply'
			result = num1.to_i * num2.to_i
		elsif operation == 'divide'
			result = num1.to_i / num2.to_i
		end
		result.to_s
	end
end