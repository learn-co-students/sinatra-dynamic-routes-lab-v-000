require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    #binding.pry
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @number = params[:number]

    "#{@number.to_i ** 2}"
  end

  get "/say/:number/:phrase" do
    @num = params[:number]
    @phrase = params[:phrase]
    #binding.pry
    phrases = []
    @num.to_i.times do
      phrases << @phrase
    end

    phrases.join(" ")
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    #binding.pry
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:number1/:number2" do
    @num1 = params[:number1]
    @num2 = params[:number2]
    if params[:operation].include?("add")
      total = @num1.to_i + @num2.to_i
    elsif params[:operation].include?("sub")
      total = @num1.to_i - @num2.to_i
    elsif params[:operation].include?("mul")
      total = @num1.to_i * @num2.to_i
    elsif params[:operation].include?("div")
      total = @num1.to_i / @num2.to_i
    end
    "#{total}"
  end
end
