require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    num = params[:number].to_i * params[:number].to_i
    num.to_s
  end

  get '/say/:number/:phrase' do
    new_string = ""
    num = params[:number].to_i
    num.times do |i|
      new_string += params[:phrase]
    end
    new_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    operator = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    if operator == "add"
      solution = num1 + num2
    elsif operator == "subtract"
      solution = num1 - num2
    elsif operator == "multiply"
      solution = num1 * num2
    else operator == "divide"
      solution = num1 / num2
    end
    solution.to_s
  end


end
