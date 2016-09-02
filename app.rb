require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    params[:name].split("").reverse.join("")  
  end

  get '/square/:number' do
    number = params[:number].to_i
    square = number * number
    square.to_s
  end

  get '/say/:number/:phrase' do
    @@phrases = []
    @number = params[:number].to_i
    phrase = params[:phrase].to_s
    @number.times do 
      @@phrases << "#{phrase}\n"
    end 
    @@phrases
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    operation = params[:operation]
    if operation == "add"
      (number1 + number2).to_s
    elsif operation == "subtract"
      (number1 - number2).to_s
    elsif operation == "multiply"
      (number1 * number2).to_s
    elsif operation == "divide"
      (number1 / number2).to_s
    end
  end
end