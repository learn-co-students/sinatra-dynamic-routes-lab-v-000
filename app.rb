require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do 
    @square_number = params[:number].to_i * params[:number].to_i
    "#{@square_number}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    (@phrase + "\n") * @number
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do 
    @sentence = []
    i = 1
    while i < 6
      @symbol = ('word' + i.to_s).to_sym
      @sentence << params[@symbol]
    # binding.pry
    i += 1
    end
    @sentence.join(' ') + '.'
  end

  get "/:operation/:number1/:number2" do
    @num1 = params[:number1]
    @num2 = params[:number2]
    @operation = params[:operation]

    @num1.to_i + @operation + @num2.to_i
  end

end
