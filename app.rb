require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    reversed = params[:name].reverse
  end

  get '/square/:number' do
    square = params[:number].to_i * params[:number].to_i
    "#{square}"
  end

  get '/say/:number/:phrase' do
    string = ""
    params[:number].to_i.times do
      string << params[:phrase]
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]

    string = "#{word1} #{word2} #{word3} #{word4} #{word5}."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
    @answer = params[:number1].to_i + params[:number2].to_i
  elsif params[:operation] == "subtract"
    @answer = params[:number1].to_i - params[:number2].to_i
  elsif params[:operation] == "multiply"
    @answer = params[:number1].to_i * params[:number2].to_i
  elsif params[:operation] == "divide"
    @answer = params[:number1].to_i / params[:number2].to_i
  end
    "#{@answer}"
  end
end
