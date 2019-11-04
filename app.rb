require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    @reverse_name = @name.to_s.reverse
    "#{@reverse_name}"
  end

  get "/square/:number" do
    @number = params[:number].to_i
    @squared_number = @number * @number
    "#{@squared_number}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase].to_s
    @phrase_number = @phrase * @number
    "#{@phrase_number}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:number1/:number2" do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @solution = " "

    @solution = " "

    case params[:operation]
    when 'add'
      solution = (@number1 + @number2).to_s
    when 'subtract'
      solution = (@number1 - @number2).to_s
    when 'multiply'
      solution = (@number1 * @number2).to_s
    when 'divide'
      solution = (@number1 / @number2).to_s

    end
  end

end
