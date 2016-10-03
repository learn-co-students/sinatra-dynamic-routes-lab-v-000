require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    name = params[:name].reverse
    @name1 = name
    "#{@name1}"
  end

  get '/square/:number' do
    number = params[:number].to_i * params[:number].to_i
    number.to_s
  end

  get '/say/:number/:phrase' do
    number = params[:number]
    phrase = params[:phrase]
    start = 0
    final = ""
    while start <= number.to_i
      start += 1
      final += "#{phrase}\n"
    end
    final
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    string
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    if operation == "add"
      number1 += number2
    elsif operation == "subtract"
      number1 -= number2
    elsif operation == "multiply"
      number1 *= number2
    else
      number1 /= number2
    end.to_s
  end
end
