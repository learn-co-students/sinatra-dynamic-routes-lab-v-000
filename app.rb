require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reversed = params[:name].reverse
    "#{@reversed}"
  end

  get '/square/:number' do
    @squared = params[:number].to_i
    @squared = @squared * @squared
    @squared.to_s
  end

  get '/say/:number/:phrase' do
    np = ""
    params[:number].to_i.times do
      np += "#{params[:phrase]}\n"
    end
    np

  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."

  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 = params[number1].to_i
    num2 = params[number2].to_i
    if operation == "add"
      num1 + num2
    elsif operation == "subtract"
      num1 - num2
    elsif operaion == "multiply"
      num1 * num2
    elsif operation == "divide"
      num1 / num2
    else
      nil
    end
  end
end

