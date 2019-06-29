require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
	get "/reversename/:name" do
		@name = params[:name].strip.reverse	
		erb :reversename
	end

	get "/square/:number" do
		@number = params[:number].to_f
		@number = @number * @number
		erb :square
	end
	
	get "/say/:number/:phrase" do
		number = params[:number].to_i
		@phrase = params[:phrase] * number
		erb :say
	end

	get '/say/:word1/:word2/:word3/:word4/:word5' do
		arr = []
		arr << params[:word1]
		arr << params[:word2]
		arr << params[:word3]
		arr << params[:word4]
		arr << params[:word5]

		@phrase = arr.join(" ")
		erb :say
	end

	get '/:operation/:number1/:number2' do
		operation = params[:operation]
		num_1 = params[:number1].to_f
		num_2 = params[:number2].to_f

		case operation.downcase
			when "add"
				@result = (num_1 + num_2)
			when "subtract"
				@result = (num_1 - num_2)
			when "multiply"
				@result = (num_1 * num_2)
			when "divide"
				if num_2 == 0
					@result = "!div_by_zero_error"
				else
					@result = num_1 / num_2
				end
		end
		erb :index
	end
end
