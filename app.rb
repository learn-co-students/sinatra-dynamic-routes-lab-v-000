require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse!
    "#{@name}"
  end

  get "/square/:number" do
    @number = params[:number]
    @number = @number.to_i
    "#{@number * @number}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number]
    @phrase = params[:phrase]
    @number = @number.to_i
    array = []
    @number.times do
      array << "#{@phrase}\n"
    end

    array

  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    "#{(params[:number1].to_i) + (params[:number2].to_i)} #{(params[:number2].to_i) - (params[:number1].to_i)} #{(params[:number2].to_i) * (params[:number1].to_i)} #{(params[:number1].to_i) / (params[:number2].to_i)}"
  end
end
