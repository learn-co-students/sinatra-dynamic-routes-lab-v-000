require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    @reversed_name = @name.reverse
    "#{@reversed_name}"
  end

  get "/square/:number" do
    @number = params[:number]
    @squared_number = @number.to_i * @number.to_i
    "#{@squared_number}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number]
    @phrase = params[:phrase]
    i= 0
    @number_int = @number.to_i
    #binding.pry
    @array = []
    while i < @number_int
      @array << " #{@phrase} "
      i+=1
    end
    @array.each do |element|
      element
    end
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
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    @number1_i = @number1.to_i
    @number2_i = @number2.to_i
    #binding.pry
    if @operation.to_s == "add"
      @added_number = @number1_i + @number2_i
      "#{@added_number}"
    elsif @operation.to_s == "subtract"
      @added_number = @number1_i - @number2_i
      "#{@added_number}"
    elsif @operation.to_s == "multiply"
      @added_number = @number1_i * @number2_i
      "#{@added_number}"
    elsif @operation.to_s == "divide"
        @added_number = @number1_i / @number2_i
        "#{@added_number}"
      end
    end

end
