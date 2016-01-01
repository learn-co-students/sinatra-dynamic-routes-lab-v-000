require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do 
    "#{params[:name].reverse}"
  end

  get "/square/:number" do 
    "#{params[:number].to_i*params[:number].to_i}"
  end

  get '/say/:number/:phrase' do 
    phrase = params[:phrase].split("%20").join(" ")
    num = params[:number].to_i
    i = 1
    result = phrase
    while i < num
      result = result + "\n"
      result = result + phrase
      i += 1
    end
    "#{result}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    string = []
    string << "#{params[:word1]}"
    string << "#{params[:word2]}"
    string << "#{params[:word3]}"
    string << "#{params[:word4]}"
    string << "#{params[:word5] + "."}"
    "#{string.join(" ").to_s}"
  end

  get '/:operation/:number1/:number2' do 
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    case params[:operation]
    when "add"
      "#{num1 + num2}"
    when "subtract"
      "#{num1 - num2}"
    when "multiply"
      "#{num1 * num2}"
    when "divide"
      "#{num1/num2}"
    else
      "Whoops"
    end
  end

end