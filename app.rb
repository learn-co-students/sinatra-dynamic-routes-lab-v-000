require_relative 'config/environment'
class App < Sinatra::Base
    get '/reversename/:name' do
        params[:name].reverse
    end

    get '/square/:number' do
        @num = params[:number].to_i
        (@num * @num).to_s
    end

    get '/say/:number/:phrase' do
        @num = params[:number].to_i
        @phr = params[:phrase]
        str = ''
        @num.times do
            str += "#{@phr}\n"
        end
        str
    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
        @word1 = params[:word1]
        @word2 = params[:word2]
        @word3 = params[:word3]
        @word4 = params[:word4]
        @word5 = params[:word5]

        str = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
        str
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
