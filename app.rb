require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name].reverse
    "#{@name}"
  end

  get "/square/:number" do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get "/say/:number/:phrase" do
    @array = []
    @phrase = params[:phrase].gsub("%20"," ")
    i = 0
    while i < params[:number].to_i do
      @array << @phrase
      i+=1
    end
    "#{@array}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:num1/:num2" do
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    case params[:operation]
    when "add"
      @display = @num1 + @num2
    when "multiply"
      @display = @num1 * @num2
    when "subtract"
      @display = @num1 - @num2
    when "divide"
      @display = @num1 / @num2
    else
      @display = "Sorry, please try again"
    end
    "#{@display}"

  end

end
