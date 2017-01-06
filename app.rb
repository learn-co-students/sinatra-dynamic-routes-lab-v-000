require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
	get '/reversename/:name' do
		@reverse_name = params[:name].reverse

		"#{@reverse_name}"
	end

	get '/square/:number' do
		@number = params[:number].to_i
		@square = @number * @number

		"#{@square}"
	end
  #not working yet
	get '/say/:number/:phrase' do 
		@number = params[:number].to_i
		@array = []
		@number.times do
		  @array << params[:phrase]
		end
		@phrase = @array.join("\n")
		"#{@phrase}"
	end

	get '/say/:word1/:word2/:word3/:word4/:word5' do
		i = 1
		array = []
		while i <= 5
			word = "word" + i.to_s
      array << params[word.to_sym]
      i += 1
    end
    sentance = array.join(' ')
    "#{sentance}."  
	end 

	get '/:operation/:number1/:number2' do 
		@num1 = params[:number1].to_i
		@num2 = params[:number2].to_i

		case params[:operation]
		when "add"
			@product = @num1 + @num2
		when "subtract"
			@product = @num1 - @num2	
		when "multiply"
		  @product = @num1 * @num2
		when "divide"
			@product = @num1 / @num2	  			  		
		end
    
    "#{@product}" 
	end
end