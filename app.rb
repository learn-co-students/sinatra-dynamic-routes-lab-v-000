require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i
    (@num * @num).to_s
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    output = []
    @num.times do
      output << @phrase
    end
    output.join("\n")
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = []
    (1..5).each do |i|
      parameter = "word#{i}".to_sym
      @words << params[parameter]
    end
    "#{@words.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_f
    @num2 = params[:number2].to_f
    case @operation
    when "add"
      "#{@num1 + @num2}"
    when "subtract"
      "#{@num1 - @num2}"
    when "divide"
      "#{@num1/@num2}"
    when "multiply"
      "#{@num1 * @num2}"
    else
      "invalid input"
    end
  end

end
