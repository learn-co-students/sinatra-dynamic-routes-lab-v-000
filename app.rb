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
    final = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times do
      final = final + "#{@phrase}" + " "
    end
    final
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @one = params[:word1]
    @two = params[:word2]
    @three = params[:word3]
    @four = params[:word4]
    @five = params[:word5]
    sentence = "#{@one} #{@two} #{@three} #{@four} #{@five}."
    sentence
  end

  get '/:operation/:number1/:number2' do
    @command = params[:operation]
    @one = params[:number1].to_i
    @two = params[:number2].to_i
    case @command
       when "add"
         "#{@one + @two} 1"
       when "subtract"
         "#{@one - @two}"
       when "multiply"
         "#{@one * @two}"
       when "divide"
         "#{@one / @two}"
       end

  end

end
