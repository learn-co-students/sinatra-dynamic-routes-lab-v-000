require 'pry'

require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    # @reversed = params[:name].reverse
    # "#{@reversed}"

    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @string = ""
    @number.times do
      @string += "#{params[:phrase]} "
    end
    @string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]
    @holder = []
    @holder << word1
    @holder << word2
    @holder << word3
    @holder << word4
    @holder << word5
    "#{@holder.join(' ')}."
  end

  get '/:operation/:number1/:number2' do
    @operator = params[:operation].downcase
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @operator == 'add'
      "#{@num1 + @num2}"
    elsif @operator == 'subtract'
      "#{@num1 - @num2}"
    elsif @operator == 'multiply'
      "#{@num1 * @num2}"
    else
      "#{@num1 / @num2}"
    end
  end

end
