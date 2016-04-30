require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do  
    params[:name].reverse
  end

  get '/square/:number' do  
    @square = params[:number].to_i  ** 2
    @square.to_s
  end

  get '/say/:number/:phrase' do  
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @string = ""
    @number.times do
      @string += "#{@phrase}\n"
    end
    @string
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
      "Invalid operation"
    end
  end

end