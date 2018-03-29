require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
      @name_reversed = params[:name].reverse
      "#{@name_reversed}"
  end
  
  get '/square/:number' do
      @number_squared = (params[:number].to_i * params[:number].to_i).to_s
      "#{@number_squared}"
  end
  
  get '/say/:number/:phrase' do
    @phrase = ""
    (params[:number].to_i).times do
      @phrase += "#{params[:phrase]}\n"
   end
   @phrase
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @string = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    @string
  end
  
  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    operation = params[:operation]
    if operation == "add"
      final = num1 + num2
    elsif operation == "subtract"
      final = num1 - num2
    elsif operation == "multiply"
      final = num1 * num2
    elsif operation == "divide"
      final = num1/num2
    else
      "Sorry"
    end
    final.to_s
  end

end