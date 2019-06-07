require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @reversename = params[:name].reverse
    "#{@reversename}"
  end

  get "/square/:number" do
    @square = params[:number].to_i**2
    "#{@square}"
  end

  get "/say/:number/:phrase" do
    @result = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times{@result = @result + @phrase}
    "#{@result}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @string = "#{params[:word1]} "+"#{params[:word2]} "+"#{params[:word3]} "+"#{params[:word4]} "+"#{params[:word5]}."
    @string
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    if operation == "add"
      result = number1 + number2
    elsif operation == "subtract"
      result = number1 - number2
    elsif operation == "multiply"
      result = number1 * number2
    elsif operation == "divide"
      result = number1 / number2
    else
      result = "invalid"
    end
    result.to_s
  end

end
