require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @user_name = params[:name]
    "Your name in reverse is #{@user_name.reverse}!"
  end

  get "/square/:number" do
    @user_num = params[:number].to_i
    "Your squared number is #{@user_num**2}"
  end

  get "/say/:number/:phrase" do
    @num_times = params[:number].to_i
    @user_phrase = params[:phrase]
    string = ""
    @num_times.times do
      string += "#{@user_phrase}\n"
    end
    string
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:num1/:num2" do
    @op = params[:operation]
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    if @op == "add"
      "#{@num1+@num2}"
    elsif @op == "subtract"
      "#{@num1-@num2}"
    elsif @op == "multiply"
      "#{@num1*@num2}"
    elsif @op == "divide"
      "#{@num1/@num2}"
    end
  end
end
