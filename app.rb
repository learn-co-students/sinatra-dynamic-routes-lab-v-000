require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 
  	@name = params[:name]
  	@name.reverse
  end

  get '/square/:number' do 
  	@number = params[:number].to_i
  	(@number**2).to_s
  end

  get '/say/:number/:phrase' do
  	@number = params[:number]
  	@phrase = params[:phrase]

  	array = []

  	@number.to_i.times do
  		array << @phrase
  	end

  	array
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
  	params.collect { |key, value| value }.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do 

  	@num1 = params[:number1].to_i
  	@num2 = params[:number2].to_i

  	case params[:operation]

  	when "add"
  		(@num1 + @num2).to_s
  	when "subtract"
  		(@num1 - @num2).to_s
  	when "multiply"
  		(@num1 * @num2).to_s
  	when "divide"
  		(@num1 / @num2).to_s
  	end
  end


end