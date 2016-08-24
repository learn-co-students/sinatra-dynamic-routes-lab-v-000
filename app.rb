require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name].reverse
    "#{@name}"
  end

  get "/square/:number" do
    @square = params[:number].to_i ** 2
    "#{@square}"
  end

  get "/say/:number/:phrase" do
    @long_phrase = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]

    @number.times do
      @long_phrase << "#{@phrase}\n"
    end
    "#{@long_phrase}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation].downcase.strip
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    
    if @operation == "add"
      @answer = @num1 + @num2
      "#{@answer}"
    elsif @operation == "subtract"
      @answer = @num1 - @num2
      "#{@answer}"
    elsif @operation == "multiply"
      @answer = @num1 * @num2
      "#{@answer}"
    elsif @operation == "divide"
      @answer = @num / @num
      "#{@answer}"
    else
      "Unsure of that operation"
    end

  end



end