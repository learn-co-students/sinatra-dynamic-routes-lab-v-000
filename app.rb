require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name].reverse
    "Goodbye, #{@name}."
  end

  get "/square/:number" do
    @num = params[:number].to_i
    @squared = @num*@num
    @fin = @squared.to_s
    "#{@fin}"
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num.times do
      @fin += @phrase
    end
    @fin
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]
    @fin = []
    @fin << @w1
    @fin << @w2
    @fin << @w3
    @fin << @w4
    @fin << @w5
    "#{@fin}"
  end

  get "/:operation/:number1/:number2" do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    "Goodbye, #{@name}."
  end
end
