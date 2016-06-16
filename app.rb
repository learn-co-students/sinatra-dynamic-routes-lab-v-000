require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @square = @num*@num
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    #@num = params[:number].to_i
    #@phrase = params[:phrase]
final = ""
  (params[:number].to_i).times do
    final += "#{params[:phrase]}\n"
  end
final
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
   sentence = []
   sentence << params[:word1]
   sentence << params[:word2]
   sentence << params[:word3]
   sentence << params[:word4]
   sentence << params[:word5]
  # "#{sentence[].join("")}."
  sentence.join(" ") << "."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    number1 = pramas[:number1]
    number2 = params[:number2]

    if operation == add
      answer = number1 + number2
    elsif opertaion == subtract
      answer = number1 - number2
    elsif operation == multiply
      answer = number1*number2
    elsif operation == divide
      answer = number1/number2
    else
      "Cannot perform the operation"
    end
  end
  end
