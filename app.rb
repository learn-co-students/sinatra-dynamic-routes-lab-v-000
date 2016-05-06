require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get "/square/:number" do
    @user_number = params[:number]
    @square = @user_number.to_i * @user_number.to_i
    "#{@square.to_s}"
  end

  get "/say/:number/:phrase" do
    @user_number = params[:number].to_i
    @user_phrase = params[:phrase]
    final = ""
    @user_number.times do |i|
      final += "#{@user_phrase}\n"
    end
    final
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word_1 = params[:word1]
    @word_2 = params[:word2]
    @word_3 = params[:word3]
    @word_4 = params[:word4]
    @word_5 = params[:word5]
    "#{@word_1}" + " #{@word_2}" + " #{@word_3}" + " #{@word_4}" + " #{@word_5}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @operation == "add"
      "#{@num1 + @num2}"
    elsif @operation == "subtract"
    "#{@num1 - @num2}"
    elsif @operation == "multiply"
      "#{@num1 * @num2}"
    else @operation == "divide"
    "#{@num1 / @num2}"
    end
  end

end