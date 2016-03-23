require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    @reversed = @name.split(//).reverse.join
    "#{@reversed}"
  end

  get '/square/:number' do 
    @number = params[:number]
    @square = @number.to_i*@number.to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do 
    @number = params[:number]
    @phrase = params[:phrase]
    @array = []
    @number.to_i.times do
      @array << @phrase
    end
    "#{@array.join("\n")}" 
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @num1 = params[:number1]
    @num2 = params[:number2]
    case @operation
      when "add"
        "#{@num1.to_i + @num2.to_i}"
      when "subtract"
        "#{@num1.to_i - @num2.to_i}"
      when "multiply"
        "#{@num1.to_i * @num2.to_i}"
      when "divide"
        "#{@num1.to_i/@num2.to_i}"  
    end
  end

end