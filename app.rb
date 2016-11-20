require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    user = params[:name]
    user.reverse
  end

  get "/square/:number" do
    num = params[:number]
    sq = num.to_i * num.to_i
    sq.to_s
  end

  get "/say/:number/:phrase" do 
    num = params[:number]
    phrase = params[:phrase] + "\n"
    phrase * num.to_i
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    ary = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]]
  
    ary.join(" ") + "."
    
  end


  get "/:operation/:number1/:number2" do 

    op = params[:operation]
    num1 = params[:number1]
    num2 = params[:number2]

    if op == "add"
      x = num1.to_i + num2.to_i
      x.to_s
    elsif op == "subtract"
      num1 - num2
    elsif op == "divide"
      num1 / num2
    else
      num1 * num2
    end


  end





end