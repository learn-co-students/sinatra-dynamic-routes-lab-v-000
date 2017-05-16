require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    params[:name].reverse
  end
  get '/square/:number' do
   @num  = params[:number].to_i
   @squared = @num * @num
   "#{@squared}"
  end
  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase}\n" * @num

  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    operation = params[:operation]
    case operation
     when "add"
        "#{number1 + number2}"
     when "multiply"
       "#{number1 * number2}"
     when "subtract"
       "#{number1 - number2}"
     when "divide"
       "#{number1/number2}"
     end
  end
end
