require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i**2}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @answer = @num.times.collect do
      @phrase
    end.join(".  ")
    "#{@answer}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params.values.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when "add"
      "#{params.values[1..-1].collect{|i| i.to_i}.reduce :+}"
    when "subtract"
      "#{params.values[1..-1].collect{|i| i.to_i}.reduce :-}"
    when "multiply"
      "#{params.values[1..-1].collect{|i| i.to_i}.reduce :*}"
    when "divide"
      "#{params.values[1..-1].collect{|i| i.to_i}.reduce :/}"
    end
  end

end
