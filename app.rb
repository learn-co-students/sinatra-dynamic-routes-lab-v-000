require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @name = params[:name].reverse!
    "#{@name}"
  end
  
  get '/square/:number' do 
    @num = params[:number].to_i 
    square = @num**2
    "#{square}"
  end
  
  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase}"*@num
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = []
    params.each_value do |v|
      @words << v 
    end
    @words.join(" ") + "."
  end
  
  get '/:operation/:number1/:number2' do
    @o = params[:operation]
    @n1 = params[:number1].to_i
    @n2 = params[:number2].to_i
    if @o == "add"
      result = @n1 + @n2 
    elsif @o == "multiply"
      result = @n1 * @n2
    elsif @o == "divide"
      result = @n1 / @n2
    elsif @o == "subtract"
      result = @n1 - @n2
    end
    result.to_s
  end

end