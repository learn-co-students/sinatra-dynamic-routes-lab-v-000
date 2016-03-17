require_relative 'config/environment'

class App < Sinatra::Base

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/reversename/:name" do
    @name = params[:name].reverse
    "#{@name}"
  end

  get "/square/:number" do
    @number = params[:number].to_i * params[:number].to_i
    "#{@number}"
  end

  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    array = []
    x = 1
    while x <= @number
     array << "#{params[:phrase]}"
      x+=1
    end

    array.join("\n")
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    case @operation
      when "add"
        "#{params[:number1].to_i + params[:number2].to_i}"
      when "subtract"
        "#{params[:number1].to_i - params[:number2].to_i}"
      when "multiply"
        "#{params[:number1].to_i * params[:number2].to_i}"
      when "divide"
        "#{params[:number1].to_i / params[:number2].to_i}"
    end
  end



end