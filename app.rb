require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    forward_name = params[:name]
    backward_name = forward_name.reverse
    "#{backward_name}"
  end

  get "/square/:number" do
    num = params[:number]
    squared_num = num.to_i * num.to_i
    "#{squared_num}"
  end

  get "/say/:number/:phrase" do
    num = params[:number]
    user_phrase = params[:phrase]
    num = num.to_i
    "#{user_phrase}" * num
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    world_1 = params[:word1]
    world_2 = params[:word2]
    world_3 = params[:word3]
    world_4 = params[:word4]
    world_5 = params[:word5]

    "#{world_1} " + "#{world_2} " + "#{world_3} " + "#{world_4} " + "#{world_5}."
  end

  get "/:operation/:number1/:number2" do
    operator = params[:operation]
    num1 = params[:number1]
    num2 = params[:number2]
    if operator == "subtract"
      total = num1.to_i - num2.to_i
      "#{total}"
    elsif operator == "add"
      total = num1.to_i + num2.to_i
      "#{total}"
    elsif operator == "divide"
      total = num1.to_i / num2.to_i
      "#{total}"
    elsif operator == "multiply"
      total = num1.to_i * num2.to_i
      "#{total}"
    else
      "hmmm"
    end
  end


end
