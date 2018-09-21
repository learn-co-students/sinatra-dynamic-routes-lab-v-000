require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    reversed_name = params[:name]
    "#{reversed_name.reverse}"
  end

  get '/square/:number' do
    num = params[:number]
    "#{num.to_i**2}.to_s"
  end

  get '/say/:number/:phrase' do
    new_phrase = ""
    (params[:number].to_i).times do
      new_phrase += "#{params[:phrase]}\n"
    end
    new_phrase
  end


  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    calculation = params[:operation]
    if calculation == "add"
      output = num1 + num2
    elsif calculation == "subtract"
      output = num1 - num2
    elsif calculation == "multiply"
      output = num1 * num2
    elsif calculation == "divide"
      output = num1 / num2
    else
      output == "Can't perform this calculation"
    end
    output.to_s
  end


  end
