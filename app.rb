require_relative 'config/environment'

class App < Sinatra::Base

	get "/reversename/:name" do
		user_name = params[:name]
		"#{user_name.reverse}"
	end

	get "/square/:number" do
		number = params[:number].to_i
		"#{number * number}"
	end

	get "/say/:number/:phrase" do
		number = params[:number].to_i
		phrase = params[:phrase]
		phrase_to_print = (phrase + "\n") * number
		"#{phrase_to_print}"
	end

	get "/say/:word1/:word2/:word3/:word4/:word5" do
		"#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}.}"
	end

	get "/:operation/:number1/:number2" do
		num1 = params[:number1].to_i
		num2 = params[:number2].to_i
		operation = params[:operation]
		"#{num1 operation num2}"
	end
end