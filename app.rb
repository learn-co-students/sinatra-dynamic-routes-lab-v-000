require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name]
    name_reverse = @name.reverse
    name_reverse
  end

  get "/square/:number" do
    num = params[:number].to_i
    @square = num * num
    "#{@square}"
  end

  get "/say/:number/:phrase" do
    num = params[:number].to_i
    @phrase = params[:phrase]
    @phrase * num

  end

    get "/say/:word1/:word2/:word3/:word4/:word5" do
      @word1 = params[:word1]
      @word2 = params[:word2]
      @word3 = params[:word3]
      @word4 = params[:word4]
      @word5 = params[:word5]
      #binding.pry
      @word1 + " " + @word2 + " " + @word3 + " " + @word4 + " " + @word5 + "."
    end
      # Write your code here!

end
