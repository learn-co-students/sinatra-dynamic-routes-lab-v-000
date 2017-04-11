require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number**2}"
  end

  get '/say/:number/:phrase' do
    phrase = ""
    @number = params[:number].to_i
    @number.times do
      phrase += "#{params[:phrase]}\n"
    end
    phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params.values.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @numb1 = params[:number1].to_i
    @numb2 = params[:number2].to_i
    if @operation == "add"
      "#{@numb1 + @numb2}"
    elsif @operation == "subtract"
      "#{@numb1 - @numb2}"
    elsif @operation == "multiply"
      "#{@numb1 * @numb2}"
    elsif @operation == "divide"
      "#{@numb1 / @numb2}"
    end
  end
end
