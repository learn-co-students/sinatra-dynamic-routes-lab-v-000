require 'pry'

require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    num = params[:number].to_i
    square = num * num
    "#{square}"
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    phrase = params[:phrase]
   # num.times do
    #    puts phrase
   # end
   # binding.pry
   count = 0
   total = ""
   while count < num
    total << phrase

    count += 1
   end
   "#{total}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
   # "#{:word1.to_s} #{:word2.to_s} #{:word3.to_s} #{:word4.to_s} #{:word5.to_s}."
   word1 = params[:word1]
   word2 = params[:word2]
   word3 = params[:word3]
   word4 = params[:word4]
   word5 = params[:word5]
   "#{word1} #{word2} #{word3} #{word4} #{word5}."
  end

  get '/:operation/:number1/:number2' do
    op = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    case op
    when "add"
        ans = num1 + num2
    when "subtract"
        ans = num1 - num2
    when "multiply"
        ans = num1 * num2
    when "divide"
        ans = num1 / num2
    end
    "#{ans.to_s}"
  end



end