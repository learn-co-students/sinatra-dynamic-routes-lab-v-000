require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end
  
  get '/square/:number' do
    @num = params[:number].to_i
    "#{@num ** 2}"
  end
  
  get '/say/:number/:phrase' do
    params[:phrase] *= params[:number].to_i
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    say_arr = [ params[:word1], params[:word2], params[:word3], params[:word4], params[:word5] ]
    "#{say_arr.join(" ")}."
  end
  
  get '/:operation/:number1/:number2' do
    a = params[:number1].to_i
    b = params[:number2].to_i
    case params[:operation]
      when "add"
        "#{a + b}"
      when "subtract"
        "#{a - b}"
      when "multiply"
        "#{a * b}"
      when "divide"
        "#{a/b}"
      else
        "not valid"
    end
  end
end