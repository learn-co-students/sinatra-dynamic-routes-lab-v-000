require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
      @square = (params[:number].to_i ** 2)
     "The square of #{params[:number]} is #{@square}."
  end

  get '/say/:number/:phrase' do
     say = params[:phrase]*params[:number].to_i
    "This phrase repeats:  #{params[:number]} times: #{say}"
  end


  get '/say/:word1/:word2/:word3/:word4/:word5' do
      "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do

    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    case params[:operation]

    when "add"
    result = number1 + number2
    "#{result}"

    when "subtract"
    result = number1 - number2
    "#{result}"

    when "multiply"
    result = number1 * number2
      "#{result}"

    when "divide"
      result = number1 / number2
      "#{result}"

    else "Not One of the 4 Valid Operators in RSpec (only add, subtract, multiply, and divide)"
  end
end

end
