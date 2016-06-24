require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    @name.split("").reverse.join("")
  end

  get '/square/:number' do 
    @number = params[:number]
    @square = @number.to_i * @number.to_i
    @square.to_s
  end

  get '/say/:number/:phrase' do 
    @number = params[:number]
    @phrase = params[:phrase]
    "#{@phrase}\n" * @number.to_i
  end


  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    #"stop rhyming I mean it."
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    case @operation
    when "add"
      "#{@number1 + @number2}"
    when "subtract"
      "#{@number1 - @number2}"
    when "multiply"
      "#{@number1 * @number2}"
    when "divide"
      "#{@number1 / @number2}"
    end
  end

end