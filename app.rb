require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    name = params[:name]
    name.reverse!
  end

  get '/square/:number' do
    num = params[:number].to_i
    (num * num).to_s
  end

  get '/say/:number/:phrase' do
    num_times = params[:number].to_i
    phrase = params[:phrase]
    string = ""
    num_times.times do
      string += "#{phrase}\n"
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string = ""
    string += "#{params[:word1]} "
    string += "#{params[:word2]} "
    string += "#{params[:word3]} "
    string += "#{params[:word4]} "
    string += "#{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    op = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    if op == add
      total = num1 + num2
    elsif op == subtract
      total = num1 - num2
    elsif op == multiply
      total = num1 * num2
    else
      total = num1 / num2
    end

    "#{total}"
  end
end