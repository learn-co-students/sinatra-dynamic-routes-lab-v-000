require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @reversed_name = params[:name].reverse
  end

  get "/square/:number" do
    @square_number = params[:number].to_i**2
    "#{@square_number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @repeated_phrase = @phrase*@number
    "#{@repeated_phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    #define variable
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    #control flow with case when condition
    #return resolved operation of each operation
    case @operation
    when "add"
      "#{@number1+@number2}"
    when "subtract"
      "#{@number2-@number1}"
    when "multiply"
      "#{@number1*@number2}"
    when "divide"
      "#{@number1/@number2}"
    end
  end
end
