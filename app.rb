require_relative 'config/environment'

class App < Sinatra::Base

	#dynamic route to accept name and render name backwards
	get '/reversename/:name' do 
		params[:name].reverse
	end

	#dynmaic route to accept number and render square of that number
	get '/square/:number' do
		@number = params[:number].to_i
		square = @number * @number
		square.to_s
	end

	#dynamic route accepts a number and a phrase and returns that phrase
	#in a string the number of times given.
	get '/say/:number/:phrase' do
		@number = params[:number].to_i
		"#{params[:phrase]}\n" * @number
	end

	#dynamic route that accepts five words and returns a string with the 
	#formatted as a sentence.
	get '/say/:word1/:word2/:word3/:word4/:word5' do
		"#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
	end

	#Create a dynamic route that accepts an operation (add, subtract, multiply or divide) 
	#and performs the operation on the two numbers provided. 
	#For example, going to /add/1/2 should render 3.

	get '/:operation/:number1/:number2' do
		num1 = params[:number1].to_i
		num2 = params[:number2].to_i
		operation = params[:operation]
		if operation == "add" 
			answer = num1 + num2
		elsif operation == "subtract"
			answer = num1 - num2
		elsif operation == "multiply"
			answer = num1 * num2
		elsif operation == "divide"
			answer = num1/num2
		else
			"What??"
		end
		answer.to_s
	end
end