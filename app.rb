require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @user_name = params[:name].reverse
    "#{@user_name}"
  end

  get "/square/:number" do
    num = params[:number].to_i
    square = num * num
    " #{square}"
  end

  get "/say/:number/:phrase" do
    sentence = ""
    (params[:number].to_i).times do
    sentence += "#{params[:phrase]}\n"
    end
    sentence    
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
   "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    op = params[:operation]
    "#{num1 op num2}"
  end

end
