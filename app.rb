require_relative 'config/environment'

class App < Sinatra::Base
    get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @square_num = params[:number].to_i ** 2
    "#{@square_num}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase] * params[:number].to_i
    "#{@phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      @addition = params[:number1].to_i + params[:number2].to_i
      "#{@addition}"
    elsif params[:operation] == "subtract"
      @subtraction = params[:number1].to_i - params[:number2].to_i
      "#{@subtraction}"
    elsif params[:operation] == "multiply"
      @multiply = params[:number1].to_i * params[:number2].to_i
      "#{@multiply}"
    elsif params[:operation] == "divide"
      @division = params[:number1].to_i / params[:number2].to_i
      "#{@division}"
    else
      "I'm not sure how to execute #{params[:operation]}. Please enter add, subtract, multiply or divide."
    end
  end

end