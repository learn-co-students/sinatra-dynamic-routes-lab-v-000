require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    output = []
    params[:number].to_i.times do
      output << "#{params[:phrase]}\n"
    end
    output
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params.values.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    operations = {'add' => '+','subtract' => '-', 'multiply' => '*', 'divide' => '/' }
    "#{params[:number1].to_i.method(operations[params[:operation]]).(params[:number2].to_i)}"

  #  raise params.inspect
  end


end
