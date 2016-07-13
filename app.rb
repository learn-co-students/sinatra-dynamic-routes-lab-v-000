require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @rev_name = params[:name].reverse!
    "#{@rev_name}"
  end

  get "/square/:number" do
    @num_squared = params[:number].to_i ** 2
    "#{@num_squared}"
  end

  get "/say/:number/:phrase" do
    @say_phrase = params[:phrase] + "\n" 
    "#{@say_phrase * params[:number].to_i}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @say_sentence = params[:captures].join(" ")
    "#{@say_sentence}."
  end

  get "/:operation/:number1/:number2" do     
    case params[:operation]
    when "add"
      @equation = (params[:number1].to_i) + (params[:number2].to_i)
    when "subtract"
      @equation = (params[:number1].to_i) - (params[:number2].to_i)
    when "multiply"
      @equation = (params[:number1].to_i) * (params[:number2].to_i)
    when "divide"
      @equation = (params[:number1].to_i) / (params[:number2].to_i)
    end    
    
    "#{@equation}"
  end

end