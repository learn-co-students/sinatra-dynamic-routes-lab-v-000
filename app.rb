require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @n = params[:number].to_i
      "#{@n * @n}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    string = ""
    @num.times do
      string += "#{@phrase}\n"
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
      a = params[:word1]
      b = params[:word2]
      c = params[:word3]
      d = params[:word4]
      e = params[:word5]
      "#{a} #{b} #{c} #{d} #{e}."
  end

  get '/:operation/:number1/:number2' do
   operation = params[:operation]
   number1 = params[:number1].to_i
   number2 = params[:number2].to_i
   if operation == "add"
     answer = number1 + number2
   elsif operation == "subtract"
     answer = number1 - number2
   elsif operation == "multiply"
     answer = number1 * number2
   elsif operation == "divide"
     answer = number1 / number2
   else
     answer = "Unable to perform this operation"
   end
   answer.to_s
 end







end
