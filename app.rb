require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    (params[:number].to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
    @phrases = ""

    params[:number].to_i.times {|i| @phrases << params[:phrase]}

    @phrases
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params.values.map {|word| word}.join(" ") }."
  end

  get '/:operation/:number1/:number2' do
    @nums = params[:number1].to_i, params[:number2].to_i

    case params[:operation]
    when "add"
      symbol = :+
    when "subtract"
      symbol = :-
    when "multiply"
      symbol = :*
    when "divide"
      symbol = :/
    end

    @nums.inject(symbol).to_s
  end

end
