require_relative 'config/environment'

class App < Sinatra::Base

	get "/reversename/:name" do
		@name = params[:name].reverse!
		"#{@name}"
	end

	get "/square/:number" do
		@num_sq = params[:number].to_i**2
		"#{@num_sq}"
	end

	get "/say/:number/:phrase" do
		final_phrase = ""

		(params[:number].to_i).times do 
			final_phrase += "#{params[:phrase]}\n"
		end
		final_phrase
	end

	get "/say/:word1/:word2/:word3/:word4/:word5" do
		"#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
	end

	get '/:operation/:number1/:number2' do
		@operation = params[:operation].to_s
		@number1 = params[:number1].to_i
		@number2 = params[:number2].to_i

		case @operation
		when "add"
			"#{@number1 + @number2}"
		when "subtract"
			"#{@number1 - @number2}"
		when "multiply"
			"#{@number1 * @number2}"
		when "divide"
			"#{@number1 / @number2}"
		else
			"Unable to perform this operation"
		end
	end
end