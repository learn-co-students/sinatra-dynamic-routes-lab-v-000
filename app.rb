require_relative 'config/environment'

class App < Sinatra::Base

    get '/reversename/:name' do
      @name = params[:name].reverse
      "#{@name}"
  end

    get '/square/:number' do
      @square = params[:number].to_i * params[:number].to_i
      "#{@square}"
    end

    get '/say/:number/:phrase' do
      @number = params[:number].to_i
      @phrase = params[:phrase]
      "#{@phrase * @number}"
    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
      @word1 = params[:word1]
      @word2 = params[:word2]
      @word3 = params[:word3]
      @word4 = params[:word4]
      @word5 = params[:word5]
      "#{@word1 + " " + @word2 + " " + @word3 + " " + @word4 + " " + @word5}."
    end

    get '/:operation/:number1/:number2' do
      @operation = params[:operation]
      if "#{@operation}" == "add"
        @result = params[:number1].to_i + params[:number2].to_i
        "#{@result}"
      elsif "#{@operation}" == "divide"
        @result = params[:number1].to_i / params[:number2].to_i
        "#{@result}"
      elsif "#{@operation}" == "subtract"
        @result = params[:number2].to_i - params[:number1].to_i
        "#{@result}"
      else
        @result = params[:number1].to_i * params[:number2].to_i
        "#{@result}"
      end
    end
end
