require_relative 'config/environment'

class App < Sinatra::Base

	get '/reversename/:name' do	
		name = params[:name].reverse
		"#{name}"
	end

	get '/square/:number' do
		squared = params[:number].to_i * params[:number].to_i
		"#{squared}"
	end

	get '/say/:number/:phrase' do
		new_phrase = ""
		params[:number].to_i.times do
			new_phrase += "#{params[:phrase]}\n"
		end
		new_phrase
	end

	get '/say/:word1/:word2/:word3/:word4/:word5' do
		sentence = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
		sentence
	end

	get '/:operation/:number1/:number2' do
		operation = params[:operation]
		num1 = params[:number1].to_i
		num2 = params[:number2].to_i
		if operation == 'add'
			answer = num1 + num2
		elsif operation == 'subtract'
			answer = num1 - num2
		elsif operation == 'multiply'
			answer = num1 * num2
		elsif operation == 'divide'
			answer = num1 / num2
		else
			"Error"
		end		
		answer.to_s	
	end

end