require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @user_name = params[:name].to_s.reverse
    "#{@user_name}"
  end

  get '/square/:number' do
    @user_name = params[:number].to_i**2
    "#{@user_name}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase].to_s
    @num = params[:number].to_i
    string = ""
    @num.times do
      string +="#{@phrase}\n"
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string = ""
    @word1 = params[:word1].to_s
    @word2 = params[:word2].to_s
    @word3 = params[:word3].to_s
    @word4 = params[:word4].to_s
    @word5 = params[:word5].to_s
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operation = params[:operation].to_s
    if @operation == "add"
      answer = (@num1 + @num2).to_s
    elsif @operation == "subtract"
      answer = (@num1 - @num2).to_s
    elsif @operation == "multiply"
      answer = (@num1 * @num2).to_s
    elsif @operation == "divide"
     answer =  (@num1 / @num2).to_s
    end
  end

end