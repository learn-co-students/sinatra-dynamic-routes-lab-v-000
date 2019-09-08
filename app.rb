require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reversename = params[:name]
    @reversename.reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    square = @number * @number
    square.to_s
  end

  get '/say/:number/:phrase' do
    final_string = ""
    (params[:number].to_i).times do
      final_string += "#{params[:phrase]}\n"
    end
    final_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @sentencearr = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]]
    @sentence = @sentencearr.join(' ') << '.'
    @sentence
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1, num2 = params[:number1].to_i, params[:number2].to_i

    if operation == "add"
      answer = num1 + num2
    elsif operation == "subtract"
      answer = num1 - num2
    elsif operation == "multiply"
      answer = num1 * num2
    elsif operation == "divide"
      answer = num1 / num2
    else
      answer = "Unable to perform this operation."
    end
    answer.to_s
  end

end
