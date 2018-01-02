require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name}".reverse
  end

  get "/square/:number" do
    @sq_num = params[:number].to_i * params[:number].to_i
    @sq_num.to_s
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    return params[:phrase] * @num
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @sentence1 = params[:word1]
    @sentence2 = params[:word2]
    @sentence3 = params[:word3]
    @sentence4 = params[:word4]
    @sentence5 = params[:word5]
    "#{@sentence1} #{@sentence2} #{@sentence3} #{@sentence4} #{@sentence5}."
  end

  get "/:operation/:number1/:number2" do
    if params[:operation] == "add"
      @total = params[:number1].to_i + params[:number2].to_i
      "#{@total}"
    elsif params[:operation] == "subtract"
      @total = params[:number1].to_i - params[:number2].to_i
      "#{@total}"
    elsif params[:operation] == "multiply"
      @total = params[:number1].to_i * params[:number2].to_i
      "#{@total}"
    elsif params[:operation] == "divide"
      @total = params[:number1].to_i / params[:number2].to_i
      "#{@total}"
    end
  end

end
