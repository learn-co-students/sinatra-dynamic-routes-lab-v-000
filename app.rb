require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    squared_num = params[:number].to_i ** 2
    squared_num.to_s
  end

  get '/say/:number/:phrase' do
    output = ""
    (params[:number].to_i).times do
      output += "#{params[:phrase]}\n"
    end
    output
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when "add"
      op = "+"
    when "subtract"
      op = "-"
    when "multiply"
      op = "*"
    when "divide"
      op = "/"
    end
    string = params[:number1] + op + params[:number2]
    "#{eval string}"
  end

end
