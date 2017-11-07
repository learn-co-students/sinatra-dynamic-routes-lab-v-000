require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @username=params[:name]
    reversed_name=@username.reverse
    "Is your name #{reversed_name}? or #{@username}"
  end

  get "/square/:number" do
    @number=params[:number]
    square_number = @number.to_i*@number.to_i
    "Your number squared is #{square_number}"
  end

  get "/say/:number/:phrase" do
    @number2 = params[:number]
    @phrase = params[:phrase]
    string_response = "You wanted to see: "
    i =0
    while i<@number2.to_i
    string_response = string_response + @phrase
    i+=1
    end
    string_response
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation=params[:operation]
    @number1=params[:number1]
    @number2=params[:number2]

    if @operation == "add"
      answer=@number1.to_i + @number2.to_i
      "The answer is #{answer}"
    elsif @operation == "subtract"
      answer=@number1.to_i - @number2.to_i
      "The answer is #{answer}"
    elsif @operation == "multiply"
      answer=@number1.to_i * @number2.to_i
      "The answer is #{answer}"
    elsif @operation == "divide"
      answer=@number1.to_i / @number2.to_i
      "The answer is #{answer}"
    end

  end


end
