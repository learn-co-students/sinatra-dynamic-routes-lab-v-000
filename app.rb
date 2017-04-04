require_relative 'config/environment'

class App < Sinatra::Base
 
  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @square = params[:number].to_i*params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @say = params[:number].to_i
    @word = params[:phrase]
    z = ""
    @say.times do
      z += "#{@word}\n"  # why += ?!
    end
    z
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    oper = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    if oper == 'add'
      res = num1 + num2
    elsif oper == 'subtract'
      res = num1 - num2
    elsif oper == 'multiply'
      res = num1 * num2
    else  
      res = num1 / num2
    end
    res.to_s
  end

end