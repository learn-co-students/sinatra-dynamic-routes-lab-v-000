require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do 
    @name = params[:name]
    reverse_name=@name.reverse!
    reverse_name
  end

  get "/square/:number" do
    @number = params[:number]
    square= @number.to_i ** 2
    square.to_s
  end

  get "/say/:number/:phrase" do 
    n = params[:number].to_i
    phrase = params[:phrase]
    "#{phrase}\n" * n
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    w1 = params[:word1]
    w2 = params[:word2]
    w3 = params[:word3]
    w4 = params[:word4]
    w5 = params[:word5]
    "#{w1} #{w2} #{w3} #{w4} #{w5}."
  end

  get "/:operation/:number1/:number2" do 
    op= params[:operation]
    n1= params[:number1].to_i
    n2= params[:number2].to_i

    if op == "add"
      total= n1 + n2
    elsif op == "subtract"
      total= n1 - n2
    elsif op == "multiply"
      total= n1 * n2
    else
      total = n1 / n2
    end
    total.to_s
  end


end