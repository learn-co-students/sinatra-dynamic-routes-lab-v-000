require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do 
  	params[:name].reverse
  end

  get '/square/:number' do 
  	@num = params[:number].to_i 
  	@product = @num ** 2
  	"#{@product}"
  end

  get '/say/:number/:phrase' do 
  	@number = params[:number].to_i
  	@phrase = params[:phrase]
  	@phrase * @number 
  	#when wanting to repeat string, YOU MUST PUT STRING FIRST, i.e. "apple * 5 NOT 5 * "apple"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
  	@word1 = params[:word1]
  	@word2 = params[:word2]
  	@word3 = params[:word3]
  	@word4 = params[:word4]
  	@word5 = params[:word5]

  	"#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."

  end

  get '/:operation/:number1/:number2' do 
  	
  	@number1 = params[:number1].to_i
  	@number2 = params[:number2].to_i
  	@operation = params[:operation]
	  	case @operation
	  		when 'add'
		  	answer = @number1 + @number2
		  	when 'subtract'
		  	answer = @number1 - @number2
		  	when 'multiply'
		  	answer = @number1 * @number2
		    when 'divide'
		    answer = @number1 / @number2
	  	end
	  	answer.to_s
  end

end