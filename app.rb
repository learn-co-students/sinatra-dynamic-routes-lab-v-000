require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    name = @name.reverse!
    name
  end

    get '/square/:number' do
      @number = params[:number]
      n = @number.to_i
      num = n ** 2
      num.to_s
    end

    get '/say/:number/:phrase' do
      number = params[:number].to_i
      ph = ''
      number.times do
        ph += "#{params[:phrase]}"
      end
      ph

    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
      "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    end

    get '/:operation/:number1/:number2'do
      operation = params[:operation]
      number1 = params[:number1].to_i
      number2 = params[:number2].to_i

      if operation == "add"
        a = number1 + number2
        a.to_s
      elsif operation == "subtract"
        a = number1 - number2
        a.to_s
      elsif operation == "multiply"
        a = number1 * number2
        a.to_s
      else operation == "divide"
        a = number1/number2
        a.to_s
      end


   end

end
