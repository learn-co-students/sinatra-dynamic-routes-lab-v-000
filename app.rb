require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number ** 2}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]

    array = Array.new(@number, @phrase)
    array.collect do |phrase|
      phrase + " "
    end
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    array = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]]

    phrase = ""
    array.each_with_index do |word, index|
      if index == array.size - 1
        phrase += "#{word}."
      else
        phrase += "#{word} "
      end 
    end
    phrase += "."
    phrase
  end

  get '/:operation/:number1/:number2' do
    @operation = params["operation"]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if @operation == "add"
      "#{@number1 + @number2}"
    elsif @operation == "subtract"
      "#{@number1 - @number2}"
    elsif @operation == "multiply"
      "#{@number1 * @number2}"
    elsif @operation == "divide"
      "#{@number1 / @number2}"
    end
  end


end
