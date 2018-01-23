require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base


  get "/reversename/:name" do
    "#{params[:name].reverse}"
  end

  get "/square/:number" do
    squared = params[:number].to_i*params[:number].to_i
    "#{squared}"
  end

  get "/say/:number/:phrase" do
      "#{params[:phrase]*params[:number].to_i}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params.values.join(" ")}."
  end

  get "/:operation/:number1/:number2" do

    def add (a,b)
      a+b
    end

    def subtract (a,b)
      a-b
    end

    def multiply (a,b)
      a*b
    end

    def divide (b,c)
      b/c
    end

    result =  self.send(params[:operation],params[:number1].to_i , params[:number2].to_i )

    "#{result}"
  end

end
