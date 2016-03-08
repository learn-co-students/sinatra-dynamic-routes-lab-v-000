require_relative 'config/environment'

class App < Sinatra::Base

	get '/reversename/:name' do 
		name = params[:name].reverse
		"#{name}"
	end

	get '/square/:number' do
		square = params[:number].to_i*params[:number].to_i
		"#{square}"
	end

	get '/say/:number/:phrase' do 
		number = params[:number].to_i
		phrase = params[:phrase] 
		"#{phrase}\n" * number
	end

	get '/say/:word1/:word2/:word3/:word4/:word5' do 
		one = params[:word1]
		two = params[:word2]
		three = params[:word3]
		four = params[:word4]
		five = params[:word5]
		"#{one} #{two} #{three} #{four} #{five}."
	end

	get '/:operation/:number1/:number2' do 
		one = params[:number1].to_i
		two = params[:number2].to_i
		op = params[:operation]

		if op == "add"
			z = one + two
		elsif op == "subtract"
			z = one - two
		elsif op == "divide"
			z = one/two
		elsif op == "multiply"
			z = one*two
		end

		"#{z}"
				
	end
end