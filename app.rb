require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:num' do
    @num = params[:num].to_i
    @square = @num * @num
    "#{@square}"
  end

  get '/say/:num/:phrase' do
    @num = params[:num].to_i
    @phrase = params[:phrase]
    @new_phrase = ""
    @num.times do |num|
      @new_phrase += "#{@phrase}"
    end
    @new_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @new_phrase = params[:word1] +" "+ params[:word2] +" "+params[:word3]+" "+ params[:word4]+" "+ params[:word5] + "."
    @new_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @new_phrase = params[:word1] +" "+ params[:word2] +" "+params[:word3]+" "+ params[:word4]+" "+ params[:word5] + "."
    @new_phrase
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1, @num2 = params[:number1].to_i, params[:number2].to_i
    @result = nil
    case @operation
      when "add"
        @result = @num1 + @num2
      when "subtract"
        @result = @num1 - @num2
      when "multiply"
        @result = @num1 * @num2
      when "divide"
        @result = @num1 / @num2
      else
        @result = nil
    end
    "#{@result}"
  end

end
