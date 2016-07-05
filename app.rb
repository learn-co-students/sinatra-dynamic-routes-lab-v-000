require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get "/square/:number" do
    @number = params[:number].to_i
    "#{@number ** 2}"
  end

  get "/say/:number/:phrase" do
    "#{params[:phrase]}\n" * params[:number].to_i
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    
    result.to_s case @operation
      when "add"
        @num1 + @num2
      when "subtract"
        @num1 - @num2
      when "multiply"
        @num1 * @num2
      when "divide"
        @num1 / @num2
    end
        
  end

end