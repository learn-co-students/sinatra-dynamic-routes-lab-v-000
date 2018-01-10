require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:number].to_i.times.collect { "#{params[:phrase]}"}.join(' ')
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @phrase = ["#{params[:word1]}", "#{params[:word2]}", "#{params[:word3]}", "#{params[:word4]}", "#{params[:word5]}"]
    @phrase.join(" ") << "."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      @answer = params[:number1].to_i + params[:number2].to_i
      "#{@answer}"
    elsif params[:operation] == "subtract"
      @answer = params[:number1].to_i - params[:number2].to_i
      "#{@answer}"
    elsif params[:operation] == "multiply"
      @answer = params[:number1].to_i * params[:number2].to_i
      "#{@answer}"
    elsif params[:operation] == "divide"
      @answer = params[:number1].to_i / params[:number2].to_i
      "#{@answer}"
    end
  end

end
