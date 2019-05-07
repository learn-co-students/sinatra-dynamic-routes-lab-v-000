
require_relative 'config/environment'

class App < Sinatra::Base


  get "/reversename/:name" do
    @user_name = params[:name]
    "Hello #{@user_name.reverse}!"
  end

  get "/square/:number" do
    @number = params[:number]
    "#{@number.to_i * @number.to_i}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number]
    @phrase = params[:phrase]
    new_string = ""
    @number.to_i.times do
      new_string += "#{@phrase}\n"
    end
    new_string
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
      @word1 = params[:word1]
      @word2 = params[:word2]
      @word3 = params[:word3]
      @word4 = params[:word4]
      @word5 = params[:word5]

        "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
    end


  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    if @operation == "subtract"
      "#{@number1.to_i - @number2.to_i}"
    elsif @operation == "multiply"
      "#{@number1.to_i * @number2.to_i}"
    elsif @operation == "add"
      "#{@number1.to_i + @number2.to_i}"
    elsif @operation == "divide"
      "#{@number1.to_i / @number2.to_i}"
    end
  end



end
