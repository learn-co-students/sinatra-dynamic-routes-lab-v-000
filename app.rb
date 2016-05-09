require_relative 'config/environment'


class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    @rev = @name.reverse
    "#{@rev}"
  end

  get '/square/:number' do
    @num = params[:number]
    @x = (@num.to_i) ** 2
    "#{@x}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    @wordy = @phrase + "\n"
    @words = @wordy * (@number.to_i)
    "#{@words}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @con = @word1 + ", " + @word2 + ", " + @word3 + ", " + @word4 + ", " + @word5 + " - " + "stop rhyming I mean it."
    "#{@con}"
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:number2]
    if @op == "add"
      @ans = @num1.to_i + @num2.to_i
    elsif @op == "subtract"
      @ans = @num1.to_i - @num2.to_i
    elsif @op == "multiply"
      @ans = @num1.to_i * @num2.to_i
    elsif @op = "divide"
      @ans = @num1.to_i / @num2.to_i
    else
      "Operation unknown"
    end
    "#{@ans.to_s}" 
  end


end