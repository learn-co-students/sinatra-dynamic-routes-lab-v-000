require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @user_name = params[:name].reverse
    "#{@user_name}"
  end

  get '/square/:number' do
    num = params[:number].to_i
    @product = num * num
    "#{@product}"
  end

  get '/say/:number/:phrase' do
    output = ''
    number = params[:number].to_i
    phrase = params[:phrase]
    number.times do output << "#{phrase}"
    end
    output
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    "#{word1 +" "+ word2 +" "+ word3 +" "+ word4 +" "+ word5}."
  end

  get '/:operation/:number1/:number2' do
    operate = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    case operate
    when "add"
      operate = :+
    when "subtract"
      operate = :-
    when "multiply"
      operate = :*
    when "divide"
      operate = :/
    end

    output = num1.send(operate, num2)
    output.to_s
  end

end
