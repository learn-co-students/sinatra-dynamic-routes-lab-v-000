require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end
  
  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end
  
  get '/say/:number/:phrase' do
    string = ""
    (params[:number].to_i).times do
      string += "#{params[:phrase]}\n"
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    
    if operation == "add"
      total = num1 + num2
    elsif operation == "subtract"
      total = num1 - num2
    elsif operation == "multiply"
      total = num1 * num2
    elsif operation == "divide"
      total = num1 / num2
    else
      "Sorry, please try again"
    end
    total.to_s
  end

end