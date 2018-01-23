require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
   name = params[:name]
   "#{name.reverse}"
  end

  get "/square/:number" do
   number = params[:number].to_i
   squared = number * number
   "#{squared}"
  end

  get "/say/:number/:phrase" do
   number = params[:number].to_i
   phrase = params[:phrase]
   show_phrases = phrase * number
   "#{show_phrases}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    values = []
    params.each { |k,v| values << v}
    "#{values.join(' ') + '.'}"
  end

  get "/:operation/:number1/:number2" do
    op = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    if op == 'add'
      math_result = num1 + num2
    elsif op == 'subtract'
      math_result = num1 - num2
    elsif op == 'multiply'
      math_result = num1 * num2
    else
      math_result = num1 / num2
    end

    "#{math_result}"
  end

end
