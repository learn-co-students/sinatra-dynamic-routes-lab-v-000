require_relative 'config/environment'

class App < Sinatra::Base

	get '/reversename/:name' do
		@name = params[:name].reverse
		"#{@name}"
	end

	get '/square/:number' do
		@squared = params[:number].to_i**2
		"#{@squared}"
	end

	get '/say/:number/:phrase' do
		"#{params[:phrase]}\n"*params[:number].to_i
	end

	get '/say/:word1/:word2/:word3/:word4/:word5' do
		@phrase = []
		params.each do | k, v |
			@phrase << v
		end
		"#{@phrase[1].join' '}."
	end

	get '/:operation/:number1/:number2' do
		@num1 = params[:number1].to_i
		@num2 = params[:number2].to_i
		@result = case params[:operation]
			when 'multiply'
			 @num1*@num2
			when 'subtract'
			 @num1-@num2
			when 'add'
			 @num1+@num2
			when 'divide'
			 @num1/@num2
			end
		"#{@result}"
	end






end