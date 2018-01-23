require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
      "#{@name}".reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
      "#{@number * @number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]

      "#{@phrase} " * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params.collect {|key,value| value}.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operator = params[:operation]
      if @operator == "multiply"
        @operation = "*"
      elsif @operator == "divide"
        @operation = "/"
      elsif @operator == "subtract"
        @operation = "-"
      else
        @operation = "+"
      end

    "#{@number1.method(@operation).(@number2)}"
  end

end
