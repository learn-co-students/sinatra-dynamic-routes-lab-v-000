require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse!
    "#{@name}"
  end

  get "/square/:number" do
    @num = params[:number].to_i * params[:number].to_i
    "#{@num}"
  end

  get "/say/:number/:phrase" do
    @phrase = "" 
    i = params[:number].to_i
    i.times do 
      @phrase += params[:phrase] 
    end
    "#{@phrase}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}." 
  end

  get "/:op/:num1/:num2" do
    n1 = params[:num1].to_i
    n2 = params[:num2].to_i
    case params[:op]
    when "add"
      sum = n1 + n2
      sum = sum.to_s
      "#{sum}"
    when "subtract"
      sum = n1 - n2
      sum = sum.to_s
      "#{sum}"
    when "divide"
      sum = n1 / n2
      sum = sum.to_s
      "#{sum}"
    when "multiply"
      sum = n1 * n2
      sum = sum.to_s
      "#{sum}"
    end
  end
  
    




end
