require_relative 'config/environment'

class App < Sinatra::Base

    get '/reversename/:name' do
      @reversename = params[:name].reverse
      "#{@reversename}"
    end

    get "/square/:number" do
      num = params[:number].to_i
      square = num * num
      square.to_s
    end

    get "/say/:number/:phrase" do
      answer = ""

      (params[:number].to_i).times do
        answer += "#{params[:phrase]}\n"
      end
      answer
    end

    get "/say/:word1/:word2/:word3/:word4/:word5" do
      "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
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
