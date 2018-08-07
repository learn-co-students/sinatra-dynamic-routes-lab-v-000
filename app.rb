require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @return = ''
    @number.times do @return << @phrase
    end
    @return
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @sentence = "#{params[:word1]} " + "#{params[:word2]} " + "#{params[:word3]} " + "#{params[:word4]} " + "#{params[:word5]}"
    "#{@sentence}."
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when "add"
      @result = params[:number1].to_i + params[:number2].to_i
    when "subtract"
      @result = params[:number1].to_i - params[:number2].to_i
    when "multiply"
      @result = params[:number1].to_i * params[:number2].to_i
    when "divide"
      @result = params[:number1].to_i / params[:number2].to_i
    end

    "#{@result}"
  end

end
