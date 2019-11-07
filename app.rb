require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
  "#{params[:name].reverse}"
  end
   
  get '/square/:number' do
    square = params[:number].to_i ** 2
    "#{square}"
  end
  
  get '/say/:number/:phrase' do
   concat_phrase = ''
   @num = params[:number].to_i
    @num.times do
        concat_phrase += params[:phrase]
    end
    concat_phrase
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}." 
  end
  
  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i


    case params[:operation]
    when 'add'
      res = (num1 + num2).to_s
    when 'subtract'
      res = (num1 - num2).to_s
    when 'multiply'
     res = (num1 * num2).to_s
    when 'divide'
      res = (num1 / num2).to_s
    end
  end

end