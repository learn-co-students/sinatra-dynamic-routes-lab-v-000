require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @user_name = params[:name]
    @user_name.reverse
  end

  get '/square/:number' do
    @num = params[:number]
    @squared = @num.to_i * @num.to_i
    @squared.to_s
  end

  get '/say/:number/:phrase' do
    @num = params[:number]
    @words = params[:phrase]
    @go = @num.to_i
    @go.times.collect { @words }.join(" ")
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @wd1 = params[:word1]
    @wd2 = params[:word2]
    @wd3 = params[:word3]
    @wd4 = params[:word4]
    @wd5 = params[:word5]
    "#{@wd1} #{@wd2} #{@wd3} #{@wd4} #{@wd5}."
  end

  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:number2]

    @add = "#{@num1.to_i + @num2.to_i}"
    @sub = "#{@num2.to_i - @num1.to_i}"
    @mul = "#{@num1.to_i * @num2.to_i}"
    @div = "#{@num1.to_i / @num2.to_i}"

      if @op == "divide"
        @div
      elsif @op == "multiply"
        @mul
      elsif @op == "subtract"
        @sub
      else
        @add
      end
   end

end
