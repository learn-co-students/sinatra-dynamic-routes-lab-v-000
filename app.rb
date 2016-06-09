require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reversed = params[:name].to_s.reverse
    "#{@reversed}"
  end

  get '/square/:number' do 
    @squared = params[:number].to_i
    "#{@squared*@squared}"
  end

   get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @phrase = params[:phrase]

    string = ""
    @num.times do 
      string += "#{@phrase}\n"
    end
    string
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    end

  get "/:operation/:number1/:number2" do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operation = params[:operation].to_s

    case @operation
    when "add"
      "#{@num1 + @num2}"
    when "subtract"
      "#{@num1 - @num2}"
    when "multiply"
      "#{@num1 * @num2}"
    when "divide"
      "#{@num1 / @num2}"
    end
  end

end