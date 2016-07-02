require_relative 'config/environment'

class App < Sinatra::Base
  #Create a dynamic route at get '/reversename/:name' that accepts a name and renders the name backwards.
  get "/reversename/:name" do
    @name = params[:name].reverse
    "#{@name}"
  end

  #Create a dynamic route at get '/square/:number' that accepts a number and returns the square of that number. Note: Remember that values in params always come in as strings, and your return value for the route should also be a string (use .to_i and .to_s).
  get '/square/:number' do
    @num = params[:number].to_i
    @square = @num*@num
    "#{@square}"
  end

  #Create a dynamic route at get '/say/:number/:phrase' that accepts a number and a phrase and returns that phrase in a string the number of times given.
  get '/say/:number/:phrase' do
  final = ""
  (params[:number].to_i).times do
    final += "#{params[:phrase]}\n"
  end
  final
  end

  #Create a dynamic route at get '/say/:word1/:word2/:word3/:word4/:word5' that accepts five words and returns a string with the formatted as a sentence.
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

  #Create a dynamic route at get '/:operation/:number1/:number2' that accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided. For example, going to /add/1/2 should render 3
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