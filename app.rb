require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.split("").reverse.join}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @square = @number ** 2
    "#{@square.to_s}"
  end

  get '/say/:number/:phrase' do
    looped_string = ""

    params[:number].to_i.times do
      looped_string += "#{params[:phrase]}\n"
    end
    looped_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if @operation == "multiply"
      answer = @number1 * @number2
    elsif @operation == "add"
      answer = @number1 + @number2
    elsif @operation == "subtract"
      answer = @number1 - @number2
    elsif @operation == "divide"
      answer = @number1 / @number2
    end
    answer.to_s
  end

end
