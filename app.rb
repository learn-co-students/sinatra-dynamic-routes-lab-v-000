require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get '/square/:number' do
    @to_square = params[:number]
    squared = "#{@to_square.to_i ** 2}"
    squared.to_s
  end

  get '/say/:number/:phrase' do
    @n = params[:number]
    @p = params[:phrase]
    arr = []
    @n.to_i.times {arr << @p}
    "#{arr.join("\n")}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    arr = []
    @one = params[:word1]
    arr << @one
    @two = params[:word2]
    arr << @two
    @three = params[:word3]
    arr << @three
    @four = params[:word4]
    arr << @four
    @five = params[:word5]
    arr << @five
    "#{arr.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @one = params[:number1]
    @two = params[:number2]
    if @operation == "add"
      "#{@one.to_i + @two.to_i}"
    elsif @operation == "subtract"
      "#{@one.to_i - @two.to_i}"
    elsif @operation == "multiply"
      "#{@one.to_i * @two.to_i}"
    else @operation == "divide"
      "#{@one.to_i / @two.to_i}"
    end
  end
end
