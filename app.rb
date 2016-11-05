require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = (params[:number].to_i * params[:number].to_i)
    "#{@number}"
  end

  get '/say/:number/:phrase' do
    command = ""
    number = (params[:number]).to_i
    @phrase = params[:phrase]
    number.times do
      command += "#{@phrase}\n"
    end
    command
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    sentence_array = [(params[:word1]), (params[:word2]), (params[:word3]), (params[:word4]), (params[:word5])]
    @sentence = sentence_array.join(" ")
    "#{@sentence}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    @number1 = (params[:number1]).to_i
    @number2 = (params[:number2]).to_i
    if operation == "add"
      @formula = @number1 + @number2
    elsif operation == "subtract"
      @formula = @number1 - @number2
    elsif operation == "multiply"
      @formula = @number1 * @number2
    else
      @formula = @number1 / @number2
    end
    "#{@formula}"
  end
end
