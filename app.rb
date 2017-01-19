require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}!"
  end

  get "/square/:number" do
    @number = params[:number]
    "#{@number.to_i * @number.to_i}"
  end

  get "/say/:number/:phrase" do
    num = params[:number].to_i
    says = []
    num.times do
     says << "#{params[:phrase]}\n"
   end
   says
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]].join(" ") + "."
  end

  get "/:operation/:number1/:number2" do

    op = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    if op == "add"
      op = "+"
    elsif op == "subtract"
      op = "-"
    elsif op == "multiply"
      op = "*"
    elsif op == "divide"
      op = "/"
    end
  "#{num1 op num2}"
 end
end
