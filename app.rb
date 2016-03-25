require_relative 'config/environment'

class App < Sinatra::Base
	
	get '/reversename/:name' do
		@name = params[:name].to_s
		"#{@name.reverse}"
	end

	get '/square/:number' do
		@num = params[:number].to_i
		"#{@num*@num}"
	end

	get '/say/:number/:pharse' do
		@num = params[:number].to_i
		@pharse = params[:pharse].to_s
	   "#{"#{@pharse}\n" * @num}"
	end

	get '/say/:word1/:word2/:word3/:word4/:word5' do
		@word1 = params[:word1].to_s
		@word2 = params[:word2].to_s
		@word3 = params[:word3].to_s
		@word4 = params[:word4].to_s
		@word5 = params[:word5].to_s
		"#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}#{"."}"
	end

	get '/:operation/:number1/:number2' do
		@operation = params[:operation].to_s
		@num1 = params[:number1].to_i
		@num2 = params[:number2].to_i
		"#{if @operation == "add"
		     @num1 + @num2
		    elsif @operation == "subtract"
		     @num1 - num2
		    elsif @operation == "multiply"
		     @num1 * num2
		    elsif @operation == "divide"
		     @num1 / num2
		    end}"
	end

end