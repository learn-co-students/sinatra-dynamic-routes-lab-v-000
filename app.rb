require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do 
    @username = params[:name]
    "#{@username.reverse!}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase].to_s
    "#{@phrase}\n"  * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1].to_s
    @word2 = params[:word2].to_s
    @word3 = params[:word3].to_s
    @word4 = params[:word4].to_s
    @word5 = params[:word5].to_s
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @opp = params[:operation].to_s
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    if @opp == "add"
      "#{@num1 + @num2}"
    elsif @opp == "subtract"
      "#{@num1 - @num2}"
    elsif @opp == "multiply"
      "#{@num1 * @num2}"
    elsif @opp == "divide"
      "#{@num1 / @num2}"
     end


  end

end