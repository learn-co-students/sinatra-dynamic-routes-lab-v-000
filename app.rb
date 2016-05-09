require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get "/square/:number" do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get "/say/:number/:phrase" do
    @n = params[:number].to_i
    @phrase = params[:phrase]
    string = ''
    @n.times do
      string += "#{@phrase}\n"
    end
    string
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    string = ''
    word = "word"

    6.times do |i|
      string += "#{params[(word + i.to_s).to_sym]} "
    end
    string.strip!
    string += "."
  end

  get "/:operation/:number1/:number2" do

    case params[:operation]
    when "add"
      math = params[:number1].to_i + params[:number2].to_i
    when "subtract"
      math = params[:number1].to_i - params[:number2].to_i
    when "multiply"
      math = params[:number1].to_i * params[:number2].to_i
    when "divide"
      math = params[:number1].to_i / params[:number2].to_i
    end
    math.to_s
  end

end
