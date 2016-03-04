require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i 
    @square = @number * @number
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i 
    @phrase = params[:phrase]
    all = ""
    @number.times do 
      all += "#{@phrase}\n"
    end
    all 
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    [params[:word1],params[:word2],params[:word3],params[:word4],params[:word5]].join(" ") + "."
    
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    
    if @operation == "add"
      @ans = @num1 + @num2
    elsif @operation == "subtract"
      @ans = @num1 - @num2
    elsif @operation == "multiply"
      @ans = @num1 * @num2
    elsif @operation == "divide"
      @ans = @num1 / @num2
    end
    @ans.to_s
  end







end