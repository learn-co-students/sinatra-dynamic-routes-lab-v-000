require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reversed_name = params[:name].reverse
    @reversed_name
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/say/:number/:phrase' do
    complete_string = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times do
      complete_string += "#{@phrase}\n"
    end
    complete_string
  end

  get '/:operation/:number1/:number2' do
    @operator = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    if @operator == "add"
      answer = @number1 + @number2
    elsif @operator == "subtract"
      answer = @number1 - @number2
    elsif @operator == "divide"
      answer = @number1 / @number2
    elsif @operator == "multiply"
      answer = @number1 * @number2
    end
    answer.to_s
  end

end
