require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reversed_name = param[:name].reverse!
  end

  get '/square/:number' do
    @squared_number = param[:number] * param[:number]
  end

  get '/say/:number/:phrase' do
    phrase = param[:phrase]
    param[:number].times {phrase}
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @sentence = "#{param[:word1]} " + "#{param[:word2]} " + "#{param[:word3]} " + "#{param[:word4]} " + "#{param[:word5]}"
  end

  get '/:operation/:number1/:number2' do
    @result = p
  end

end
