require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    @backwards = @name.reverse
    "#{@backwards}"
  end

  get "/square/:number" do
    @num = params[:number]
    @squares = @num.to_i * @num.to_i
    "#{@squares}"
  end
  get "/say/:number/:phrase" do
    @num = params[:number]
    @phrs = params[:phrase]
    @phrs_all = []
      @num.to_i.times do
        @phrs_all << @phrs

      end
      "#{@phrs_all}"
    #binding.pry
  end
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    new_sentense = ""
    @word1 = params[:word1]
    new_sentense = new_sentense + @word1 + " "
    @word2 = params[:word2]
    new_sentense = new_sentense + @word2 + " "
    @word3 = params[:word3]
    new_sentense = new_sentense + @word3 + " "
    @word4 = params[:word4]
    new_sentense = new_sentense + @word4 + " "
    @word5 = params[:word5]
    new_sentense = new_sentense + @word5 + "."
    "#{new_sentense}"

  end
  get "/:operation/:number1/:number2" do
    @operations = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:number2]
    #binding.pry
    if @operations == "add"
      #binding.pry
      "#{@num1.to_i + @num2.to_i}"
    elsif @operations == "subtract"
      "#{@num1.to_i - @num2.to_i}"
    elsif @operations == "multiply"
      "#{@num1.to_i * @num2.to_i}"
    elsif @operations == "divide"
      "#{@num1.to_i / @num2.to_i}"
    end




  end

end
