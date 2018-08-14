require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @user_name = params[:name].reverse
    "#{@user_name}"
  end

  get "/square/:number" do
    @square_num = params[:number].to_i
    "#{@square_num * @square_num}"
  end

  get "/say/:number/:phrase" do
    final_string = " "
    (params[:number].to_i).times do
      final_string += "#{params[:phrase]}"
    end
    final_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
     "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end

  get '/:operation/:number1/:number2' do
    @s = params[:operation]
    @a = params[:number1].to_i
    @b = params[:number2].to_i
    if @s == "add"
      return "#{@a + @b}"

    elsif @s == "subtract"
      return "#{@a - @b}"
    elsif @s == "multiply"
      return "#{@a * @b}"
    elsif @s == "divide"
      return "#{@a / @b}"

    end
  end
end
