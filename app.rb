require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    status 200
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do 
    status 200
    @number = params[:number]
    "#{@number.to_i * @number.to_i}"
  end

  get "/say/:number/:phrase" do
    status 200
    @number = params[:number]
    @phrase = params[:phrase]
    "#{@number.to_i.times.map { @phrase }.join("\n")}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    status 200
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get "/:operation/:number1/:number2" do 
    @number1 = params[:number1]
    @number2 = params[:number2]

    if params[:operation] == "add"
      "#{@number1.to_i + @number2.to_i}"
    elsif params[:operation] == "subtract"
      "#{@number1.to_i - @number2.to_i}"
    elsif params[:operation] == "multiply"
      "#{@number1.to_i * @number2.to_i}"
    elsif params[:operation] == "divide"
      "#{@number1.to_i / @number2.to_i}"
    else
      status 400
    end
  end   
end

