require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @number = params[:number].to_i
    "#{@number**2}"
  end
  get "/say/:number/:phrase" do
    @phrase = params[:phrase] + "\n"
     "#{@phrase}" * params[:number].to_i
    end
  get "/say/:word1/:word2/:word3/:word4/:word5" do
      @word1 = params[:word1].to_s
      @word2 = params[:word2].to_s
      @word3 = params[:word3].to_s
      @word4 = params[:word4].to_s
      @word5 = params[:word5].to_s
      arr= [@word1,@word2, @word3, @word4, @word5]
      arr.join(" ") + '.'
    end
  get "/:operation/:number1/:number2" do
      @operation = params[:operation].to_s
      @number1 = params[:number1].to_i
      @number2 = params[:number2].to_i
      case @operation
      when condition
        "add"
        @number1 + @number2
      when condition
        "subtract"
        @number1 - @number2
      when condition
         "multipy"
        @number1 * @number2
      when "divide"
        @number1/@number2
      end
    end
end
