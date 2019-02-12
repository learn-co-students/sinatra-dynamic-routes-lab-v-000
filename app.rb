require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse
  end
  
  get "/square/:number" do
    @num = params[:number].to_i
    "#{@num * @num}".to_s
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @phrase_string = ""
    @num.times {@phrase_string << @phrase}
    @phrase_string
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  
  get "/:operation/:num1/:num2" do
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    @operation = params[:operation]
    
    if @operation == 'add'
      "#{@num1 + @num2}"
    elsif @operation == 'multiply'
      "#{@num1 * @num2}"
    elsif @operation == 'subtract'
      "#{@num1 - @num2}"
    elsif @operation == 'divide'
      "#{@num1 / @num2}"
    end

  end



end

  # This is a sample dynamic route.
  # get "/hello/:name" do
  #   @user_name = params[:name]
  #   "Hello #{@user_name}!"
  # end

# Instructions
# Create a dynamic route at get '/reversename/:name' that accepts a name and renders the name backwards.

# Create a dynamic route at get '/square/:number' 
# that accepts a number and returns the square of that number. Note: Remember that values in params 
# always come in as strings, and your return value for the route should also be a string (use .to_i and .to_s).

# Create a dynamic route at get '/say/:number/:phrase' that accepts a number and a phrase and returns that 
# phrase in a string the number of times given.

# Create a dynamic route at get '/say/:word1/:word2/:word3/:word4/:word5' that accepts five words and 
# returns a string containing all five words (i.e. word1 word2 word3 word4 word5).

# Create a dynamic route at get '/:operation/:number1/:number2' that accepts an operation 
# (add, subtract, multiply or divide) and performs the operation on the two numbers provided. 
# For example, going to /add/1/2 should render 3.