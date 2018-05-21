require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name'do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    str = ''
      @num.times do
        str += "#{@phrase} "
      end
    "#{str}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @str = params[:word1]+ " "+ params[:word2] +" "+ params[:word3]+" "+ params[:word4] +" "+ params[:word5]+"."
    "#{@str}"
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
      if @operation == "add"
        total = @num1 + @num2
      elsif
        @operation == 'subtract'
        total = @num1 - @num2
      elsif
        @operation == 'multiply'
        total = @num1 * @num2
      else
        total = @num1 / @num2
      end
      "#{total}"
  end

end
