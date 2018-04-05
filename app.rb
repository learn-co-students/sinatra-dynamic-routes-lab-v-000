require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do 
    @name = params[:name].reverse
    "#{@name}"
  end
  
  get "/square/:number" do
    @num = params[:number].to_i * params[:number].to_i
    "#{@num}"
  end

  get "/say/:number/:phrase" do 
    @phrase = params[:phrase]
    @sentence = []
    params[:number].to_i.times do
      @sentence << @phrase
    end
    "#{@sentence.join(" ")}"
  end
  
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @words = []
    params.each do |k, v|
      @words << v
    end
    "#{@words.join(" ")}."
  end
  
  get "/:operation/:number1/:number2" do 
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    case params[:operation]
    when "add"
      @num3 = @num1 + @num2
      "#{@num3}"
    when "subtract"
      @num3 = @num1 - @num2
      "#{@num3}"
    when "multiply"
      @num3 = @num1 * @num2
      "#{@num3}"
    when "divide"
      @num3 = @num1 / @num2
      "#{@num3}"
    end
  end
end