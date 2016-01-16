require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do 
    @name = params[:name]
    reversed = @name.reverse
    "#{reversed}"
  end

  get '/square/:number' do 
    @num = params[:number].to_i
    ans = @num ** 2
    ans_string = ans.to_s 
  end 

  get '/say/:number/:phrase' do 
    num = params[:number].to_i 
    phrase = params[:phrase]
   "#{phrase}\n" * num 
  end 

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end 

  get '/:operation/:number1/:number2' do 
    case params[:operation] 
    when "add"
      "#{params[:number1].to_i + params[:number2].to_i}"
    when "multiply"
     "#{params[:number1].to_i * params[:number2].to_i}"
    when "divide"
      "#{quotient = params[:number1].to_i / params[:number2].to_i}"
    when "subtract"
      "#{params[:number1].to_i - params[:number2].to_i}"
    end 
  end

end