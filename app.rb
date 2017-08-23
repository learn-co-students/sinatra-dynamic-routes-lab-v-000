require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
      @squared_number = params[:number].to_i * params[:number].to_i
      "#{@squared_number}"
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
    @operation = params[:operation]
    @first = params[:number1].to_i
    @second = params[:number2].to_i
    case @operation
       when "add"
         "#{@first + @second}"
       when "subtract"
         "#{@first - @second}"
       when "multiply"
         "#{@first * @second}"
       when "divide"
         "#{@first / @second}"
       end

  end

end