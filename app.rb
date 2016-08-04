require_relative 'config/environment'

class App < Sinatra::Base
  get "/" do
    "Hello World!"
  end

  get "/reversename/:name" do
    name = params[:name]
    name.reverse
  end

  get "/square/:number" do
    @num = params[:number]
    (@num.to_i * @num.to_i).to_s
  end

  get "/say/:number/:phrase" do
    str = ""
    params[:number].to_i.times do
      str += "#{params[:phrase]}\n"
    end
    str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    if operation == "add"
      answer = number1 + number2
    elsif operation == "subtract"
      answer = number1 - number2
    elsif operation == "multiply"
      answer = number1 * number2
    elsif operation == "divide"
      answer = number1 / number2
    else
      answer = "Unable to perform this operation"
    end
    answer.to_s
  end
end