require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    num = params[:number]
    (num.to_i ** 2).to_s
  end

  # returns the phrase in a string the number of times given
  get '/say/:number/:phrase' do
    phrase = ""
    (params[:number].to_i).times do
      phrase += "#{params[:phrase]}\n"
    end
    phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    case params[:operation]
    when 'add'
      output = num1 + num2
    when 'subtract'
      output = num1 - num2
    when 'multiply'
      output = num1 * num2
    when "divide"
      output = num1 / num2
    else
      output = "Unable to perform this operation"
    end
    output.to_s
  end

end
