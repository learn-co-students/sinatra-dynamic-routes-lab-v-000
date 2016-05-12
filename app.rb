require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reversename = params[:name].reverse
    "#{@reversename}"
  end

  get '/square/:number' do
    @squared = params[:number].to_i * params[:number].to_i
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @num = params[:number].to_i
    "#{@phrase}\n" * @num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @sentence = @word1.concat(" ").concat(@word2).concat(" ").concat(@word3).concat(" ").concat(@word4).concat(" ").concat(@word5).concat(".")
    "#{@sentence}"
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    if @operation == "add"
      "#{params[:number1].to_i + params[:number2].to_i}"
    elsif @operation == "subtract"
      "#{params[:number1].to_i - params[:number2].to_i}"
    elsif @operation == "multiply"
      "#{params[:number1].to_i * params[:number2].to_i}"
    elsif @operation == "divide"
      "#{params[:number1].to_i / params[:number2].to_i}"
    else
      "Invalid command"
    end
  end

end