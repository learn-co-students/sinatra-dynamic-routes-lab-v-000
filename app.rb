require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    "Hello World"
  end

  get '/reversename/:name' do
    params[:name].reverse!
  end

  get '/square/:number' do
    @number = params[:number]
    "#{(@number.to_i)**2}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase].gsub('%20',' ')+"\n"
    "#{@phrase * @number}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    if @operation == "add"
      "#{@num1+@num2}"
    elsif @operation == "subtract"
      "#{@num1-@num2}"
    elsif @operation == "multiply"
      "#{@num1*@num2}"
    elsif @operation == "divide"
      "#{@num1/@num2}"
    else
      "This is not a valid operation"
    end
  end
end
