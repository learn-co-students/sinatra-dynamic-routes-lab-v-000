require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    name = params[:name]
    name.reverse
  end

  get "/square/:number" do
    number = params[:number].to_i
    (number * number).to_s
  end

  get '/say/:number/:phrase' do
    number = params[:number].to_i
    phrase = params[:phrase]
    result = ""
    x = 1
    while x <= number do
      # binding.pry
      result = result + phrase
      x += 1
    end
    result
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    return_string = params[:word1] + " #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    return_string
  end

  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    case params[:operation].downcase
    when 'add'
      return_value = number1 + number2
    when 'subtract'
      return_value = number1 - number2
    when 'multiply'
      return_value = number1 * number2
    when 'divide'
      return_value = number1 / number2
    end
    return_value.to_s
  end
end