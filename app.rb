require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse!}"
    #accepts name and renders the name backwards
  end

  get '/square/:number' do
    #accepts one number and returns the square NOTE: input will be a string use to_i
    @num = params[:number].to_i
    "#{@num*@num}"
  end

  get '/say/:number/:phrase' do
    #accepts a number and prhase and returns phrase in a string the number of times given
    num = params[:number].to_i
    phrase = params[:phrase]
    output = ""

    num.times do
      output << phrase
    end

    "#{output}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    #returns a string containing all five words
    w1 = params[:word1]
    w2 = params[:word2]
    w3 = params[:word3]
    w4 = params[:word4]
    w5 = params[:word5]

    "#{w1} #{w2} #{w3} #{w4} #{w5}."
  end

  get '/:operation/:number1/:number2' do
    #performs operation (add, sub, mul, divide) on two numbers
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    op = params[:operation]

    case op
    when "add"
      "#{num1 + num2}"
    when "subtract"
      "#{num1 - num2}"
    when "multiply"
      "#{num1*num2}"
    when 'divide'
      "#{num1/num2}"
    else
      nil
    end
  end

end
