require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @number = params[:number].to_i
    @square_number = (@number * @number).to_s
    "#{@square_number}"
  end

  get "/say/:number/:phrase" do
    phrase_array = []
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times do
      phrase_array << @phrase
    end
    phrase_array
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @sentence = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    "#{@sentence}"
  end

  get "/:operation/:number1/:number2" do
    case params[:operation]
    when "add"
      @result = (params[:number1].to_i + params[:number2].to_i).to_s
    when "subtract"
      @result = (params[:number1].to_i - params[:number2].to_i).to_s
    when "multiply"
      @result = (params[:number1].to_i * params[:number2].to_i).to_s
    when "divide"
      @result = (params[:number1].to_i / params[:number2].to_i).to_s
    end

    "#{@result}"
  end


end
