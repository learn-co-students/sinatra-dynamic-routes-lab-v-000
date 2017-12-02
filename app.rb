require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do |name|
    "#{name.reverse}"
  end

  get '/square/:number' do |num|
    "#{num.to_i ** 2}"
  end

  get '/say/:number/:phrase' do |num, phrase|
    output = []
    num.to_i.times {output << phrase}
    "#{output.join}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params.values.join(" ")}."
  end

  get '/:operation/:number1/:number2' do |operation, num1, num2|
    sym = "+" if operation == "add"
    sym = "-" if operation == "subtract"
    sym = "*" if operation == "multiply"
    sym = "/" if operation == "divide"
    "#{num1.to_i.send(sym.to_sym, num2.to_i)} "
  end
end
