require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    reversed = params[:name].reverse
    "#{params[:name]} reversed is #{reversed}."
  end

  get '/square/:number' do
    squared = params[:number].to_i * params[:number].to_i
    "#{params[:number]} squared is #{squared}."
  end

  get '/say/:number/:phrase' do
    n = params[:number].to_i
    repeated_phrase = ""
    n.times do
      repeated_phrase += "#{params[:phrase]}\n"
    end
    repeated_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    operation = params[:operation]
    case operation
    when "add"
      statement = "#{num1} plus #{num2} equals #{num1 + num2}."
    when "subtract"
      statement = "#{num1} minus #{num2} equals #{num1 - num2}."
    when "multiply"
      statement = "#{num1} times #{num2} equals #{num1 * num2}."
    when "divide"
      statement = "#{num1} divided by  #{num2} equals #{num1 / num2}."
    else
      statement = "Unable to perform this operation."
    end
    statement
  end
end
