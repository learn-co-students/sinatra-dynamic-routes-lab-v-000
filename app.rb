require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
  	@name = params[:name]
  	"#{@name.reverse}"
  end

  get '/square/:number' do
  	@solution = params[:number].to_i ** 2
  	"#{@solution}"
  end

  get '/say/:number/:phrase' do 
  	@number = params[:number].to_i
  	@phrase = params[:phrase]
  	@solution = @phrase * @number 
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
  	@number1 = params[:number1].to_i
  	@number2 = params[:number2].to_i
  	if params[:operation] == "add"
  		@solution = @number1 + @number2 
  		"#{@solution}"
  	elsif 
  		params[:operation] == "subtract"
  		@solution = @number1 - @number2 
  		"#{@solution}"
  	elsif 
  		params[:operation] == "multiply"
  		@solution = @number1 * @number2 
  		"#{@solution}"
  	else 
  		@solution = @number1 / @number2 
  		"#{@solution}"
  	end
  end

end

  # get '/:operation/:number1/:number2' do
  #   number1 = params[:number1].to_i
  #   number2 = params[:number2].to_i

  #   answer = 'Unable to perform this operation'

  #   case params[:operation]
  #   when 'add'
  #     answer = (number1 + number2).to_s
  #   when 'subtract'
  #     answer = (number1 - number2).to_s
  #   when 'multiply'
  #     answer = (number1 * number2).to_s
  #   when 'divide'
  #     answer = (number1 / number2).to_s
  #   end
  # end