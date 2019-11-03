require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do |b|
    "#{b.reverse}"

  end

  get '/square/:number' do |s|
    "#{s.to_i ** 2}"
  end

  get '/say/:number/:phrase' do |x,y|
    phrase = []
    x.to_i.times {phrase << y}
    "#{phrase.join}"
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
