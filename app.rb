require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  get '/reversename/:name' do 
    @reverse = params[:name]
    "#{@reverse.downcase.reverse}"
  end

  get '/square/:number' do 
    @square = params[:number]
    "#{@square.to_i*@square.to_i}"
  end 

  get '/say/:number/:phrase' do 
    @phrase = params[:phrase]
    @number = params[:number]

    "#{params[:phrase]}\n" * params[:number].to_i
  end  

  get '/say/:word1/:word2/:word3/:word4/:word5' do
   @word_1 = params[:word1]
   @word_2 = params[:word2]
   @word_3 = params[:word3]
   @word_4 = params[:word4]
   @word_5 = params[:word5]
   "#{@word_1} #{@word_2} #{@word_3} #{@word_4} #{@word_5}." 

  end  

  get '/:operation/:number1/:number2' do 
    @num_1 = params[:number1].to_i
    @num_2 = params[:number2].to_i
    @operation = params[:operation].downcase
    case @operation

    when "add"
      "#{@num_1 + @num_2}"

    when "subtract"
      "#{@num_1 - @num_2}"

    when "multiply"
      "#{@num_1 * @num_2}"

    when "divide"
      "#{@num_1 / @num_2}"
    end 
  end  

end