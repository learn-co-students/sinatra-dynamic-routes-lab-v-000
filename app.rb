require_relative 'config/environment'

class App < Sinatra::Base

	get '/reversename/:name' do
	  status 200
	  name = params[:name]
	  name.reverse!
	end

	get '/square/:number' do
		status 200
		number = params[:number]
		m = number.to_i * number.to_i
		m.to_s
	end 

	get '/say/:number/:phrase' do 
		status 200
		n = params[:number].to_i
		phrase = params[:phrase] + "\n"
		result = phrase * n
		m = result[0..-2]
	end 

	get '/say/:word1/:word2/:word3/:word4/:word5' do
		status 200
		m = params[:word1] +  " " + params[:word2] + " " + params[:word3] +  " " + params[:word4] +  " " + params[:word5] + "."
	end 

	get '/:operation/:number1/:number2' do
	operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    if operation == "add"
      answer = number1 + number2
    elsif operation == "subtract"
      answer = number1 - number2
    elsif operation == "multiply"
      answer = number1 * number2
    elsif operation == "divide"
      answer = number1 / number2
    else
      answer = "Unable to perform this operation"
    end
    answer.to_s
	end 


end