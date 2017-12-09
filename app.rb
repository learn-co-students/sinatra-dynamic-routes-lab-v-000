require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
      @reverse = params[:name].reverse
      "#{@reverse}"
  end
  
  get '/square/:number' do
      @square = params[:number].to_i * params[:number].to_i
      "#{@square}"
  end
  
  get '/say/:number/:phrase' do
      @phrase = params[:phrase]
      @times = params[:number].to_i
      @all = []
      @times.times do
          @all << "#{@phrase}"
      end
      @all.join(", ")
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
      @word1 = params[:word1]
      @word2 = params[:word2]
      @word3 = params[:word3]
      @word4 = params[:word4]
      @word5 = params[:word5]
      @phrase = "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end
  
  get '/:operation/:number1/:number2' do
      @operation = params[:operation]
      @number1 = params[:number1].to_i
      @number2 = params[:number2].to_i
      
      case @operation
      when "add"
          @equals = @number1 + @number2
      when "subtract"
          @equals = @number1 - @number2
      when "multiply"
          @equals = @number1 * @number2
      when "divide"
          @equals = @number1 / @number2
      end
      
      "#{@equals}"
  end

end