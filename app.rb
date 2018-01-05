require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do
    @name_reversed = params[:name].reverse
    "#{@name_reversed}"
  end

  get "/square/:number" do
    @squared_number = params[:number].to_i * params[:number].to_i
    @squared_number.to_s
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase * @number}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word_array = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]]
    @word_array.join(" ") << "."  
  end

  get "/:operation/:number1/:number2" do 
    @operation = params[:operation]
    
    if @operation == "add"
      @total = params[:number1].to_i + params[:number2].to_i
      @total.to_s
    elsif 
      @operation == "subtract"
      @total = params[:number2].to_i - params[:number1].to_i 
      @total.to_s
    elsif 
      @operation == "multiply"
      @total = params[:number2].to_i * params[:number1].to_i 
      @total.to_s
    else
      @operation == "divide"
      @total = params[:number1].to_i / params[:number2].to_i 
      @total.to_s
    end


    # @add_num = params[:number1].to_i + params[:number2].to_i
    # @add_num.to_s
   

 
  end


end