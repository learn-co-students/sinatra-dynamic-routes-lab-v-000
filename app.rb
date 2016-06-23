require_relative 'config/environment'

class App < Sinatra::Base
  # This is a sample static route.
  get '/reversename/:name' do
    name = params[:name]
    name.split("").reverse.join
  end


  # '/square/:number' returns the square of that number.
  # Note: Remember that values in params always come in as strings, and your return value for the route should also be a string (use .to_i and .to_s).
  get "/square/:number" do
    num = params[:number].to_i**2
    num.to_s
  end

  # '/say/:number/:phrase' that accepts a number
  # and a phrase and returns that phrase in a
  # string the number of times given.
  get "/say/:number/:phrase" do
    num = params[:number].to_i
    phrase = params[:phrase]
    [phrase] * num * "\n"
  end

# accepts five words and returns a string with the
# formatted as a sentence.
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    params[:captures].join(" ") + "."
  end

  get "/:operation/:number1/:number2" do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    result = nil
    case params[:operation]
      when "add"
        result = num1 + num2
      when "subtract"
        result = num1 - num2
      when "multiply"
        result = num1 * num2
      when "divide"
        result = num1 / num2
    end
    result.to_s
  end


end

# Create a dynamic route at get '/:operation/:number1/:number2' that accepts an operation (add, subtract, multiply or divide) and performs the operation on the two numbers provided. For example, going to /add/1/2 should render 3.
