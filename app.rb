require_relative 'config/environment'

class App < Sinatra::Base

	get "/reversename/:name" do 
		name = params[:name]
		"#{name.reverse!}"
	end

	get "/square/:number" do
		number = params[:number].to_i
		"#{number ** 2}"
	end

	get "/say/:number/:phrase" do 
		final_string = ""
		number = params[:number].to_i
		phrase = params[:phrase]
		number.times do
			final_string += "#{phrase}\n"
		end
		final_string
	end

	get "/say/:word1/:word2/:word3/:word4/:word5" do
		"#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
	end

	get "/:operation/:number1/:number2" do
		operation = params[:operation]
		number1 = params[:number1].to_i
		number2 = params[:number2].to_i		

		if operation == "add"
			answer = number1 + number2
		elsif opeation == "subtract"
			answer = number1 - number2
		else
			answer = "Unable to perform this operation"
		end

		answer.to_s
	end

end
