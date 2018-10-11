require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
    get '/reversename/:name' do
      @name = params[:name].reverse
      "#{@name}"
    end

    get '/square/:number' do
      @square = params[:number].to_i
      "#{@square} * #{@square} = #{@square * @square}.to_s"
      # "#{Math.sqrt(@square).to_s}"
    end

    get '/say/:number/:phrase' do
      answer = ""
        params[:number].to_i.times do
          answer  << params[:phrase]
        end
        answer
      end

    get '/say/:word1/:word2/:word3/:word4/:word5' do

      "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    end

    get '/:operation/:number1/:number2' do
      operation = params[:operation]
      num1 = params[:number1].to_i
      num2 = params[:number2].to_i

        if operation == "add"
          content = num1 + num2
        elsif operation == "subtract"
          content = num1 - num2
        elsif operation == "multiply"
          content = num1 * num2
        elsif operation == "divide"
          content = num1 / num2
        end
        content.to_s
    end

end
