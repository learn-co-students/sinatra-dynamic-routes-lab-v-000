require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reversed = params[:name].reverse!
    "#{@reversed}"
  end

  get "/square/:number" do
    @to_square = params[:number].to_i
    "Hello #{@to_square ** 2}!"
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @phr = params[:phrase]
    start = ""
    @num.times do
      start += "#{@phr}\n"
    end
    start
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @first = params[:word1]
    @second = params[:word2]
    @third = params[:word3]
    @fourth = params[:word4]
    @fifth = params[:word5]
    "#{@first} #{@second} #{@third} #{@fourth} #{@fifth}."
  end

  get "/:operation/:number1/:number2" do
    @op = params[:operation].to_s
    @first = params[:number1].to_i
    @second = params[:number2].to_i
    case @op
    when "add"
      "#{@first + @second}"
    when "subtract"
      "#{@first - @second}"
    when "multiply"
      "#{@first * @second}"
    when "divide"
      "#{@first / @second}"
    end
  end

end
