require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name}".reverse
  end
  
  get '/square/:number' do
    @number = params[:number].to_i
    @square = @number ** 2
    "#{@square}"
  end
  
  get '/say/:number/:phrase' do
    answer = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]
    
    @number.times do
      answer += "#{@phrase}\n"
    end
    answer
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
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if @operation == "add"
      (@number1 + @number2).to_s

    elsif @operation == "subtract"
      (@number1 - @number2).to_s

    elsif @operation == "multiply"
      (@number1 * @number2).to_s

    elsif @operation == "divide"
      (@number1 / @number2).to_s
    end
  end

end