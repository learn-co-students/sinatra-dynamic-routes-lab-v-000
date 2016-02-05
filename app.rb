require_relative 'config/environment'

class App < Sinatra::Base
    
  get '/reversename/:name' do 
    @name = params[:name]
    "#{@name.reverse}"
  end
  get '/square/:number' do 
    @num = params[:number].to_f
    @square = return_float_if_needed(@num*@num)
    "#{@square}"
  end
  get '/say/:number/:phrase' do 
    @number = params[:number].to_i
    @phrase = params[:phrase]
    erb :repeat_phrase
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end
  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @number1 = return_float_if_needed(params[:number1])
    @number2 = return_float_if_needed(params[:number2])
    if @operation == "multiply"
      "#{return_float_if_needed(@number1 * @number2)}"
    elsif @operation == "divide" && @number2 != 0
      "#{return_float_if_needed(@number1 / @number2)}"
    elsif @operation == "add"
      "#{return_float_if_needed(@number1 + @number2)}"
    elsif @operation == "subtract"
      "#{return_float_if_needed(@number1 - @number2)}"
    else
      "I don't recognize that operation"
    end
  end
  
  def return_float_if_needed(number)
    number.to_f % 1 == 0 ? number.to_i : number.to_f
  end
    
end