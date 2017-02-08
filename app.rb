require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reversedName = params[:name].reverse!
    "#{@reversedName}"
  end

  get '/square/:number' do
    @squaredNumber = (params[:number].to_i) ** 2
    "#{@squaredNumber}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    output = ""
    counter = 1

    # "At least it's loading. And #{@number} and #{@phrase} and #{counter}"

    @number.times do
      output += @phrase
      if counter != @number
        output += "\n"
      end
      counter += 1
    end

    "#{output}"

  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @output = params[:word1] + " " + params[:word2] +  " " + params[:word3] +  " " + params[:word4] +  " " + params[:word5] + "."
    "#{@output}"
  end

  get '/:operation/:number1/:number2' do

    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    case @operation
    when "add"
      @output = (@number1 + @number2).to_s
    when "subtract"
      @output = (@number1 - @number2).to_s
    when "multiply"
      @output = (@number1 * @number2).to_s
    when "divide"
      @output = (@number1 / @number2).to_s
    else
      @output = "unknown operation"
    end

    "#{@output}"

  end


end
