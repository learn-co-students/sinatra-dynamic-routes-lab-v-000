require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do 
    @name = params[:name]
    @name = @name.reverse
    "#{@name}"
  end 
  
  get '/square/:number' do 
    @number = params[:number]
    @number = @number.to_i 
    @total = @number * @number
    
    "#{@total}" 
  end 
  
  get '/say/:number/:phrase' do 
    @num = params[:number]
    @num = @num.to_i 
    
    @phrase = params[:phrase]
    
    @complete_phrase = []
    @count = 0 
    
    while @count < @num 
    @complete_phrase << @phrase
    @count += 1 
    end 
    @complete_phrase = @complete_phrase.join(" ")
    "#{@complete_phrase}"
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @list_of_words = []
    @list_of_words << params[:word1]
    @list_of_words << params[:word2]
    @list_of_words << params[:word3]
    @list_of_words << params[:word4]
    @list_of_words << params[:word5]
    
    @list_of_words = @list_of_words.join(" ")
    "#{@list_of_words}."
  end 
  
  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @num1 = params[:number1]
    @num1 = @num1.to_i 
    @num2 = params[:number2]
    @num2 = @num2.to_i 
    
    if @operation == "add"
      @total_return = @num1 + @num2 
    elsif @operation == "subtract"
      @total_return = @num1 - @num2
    elsif @operation == "multiply"
      @total_return = @num1 * @num2
    elsif @operation == "divide"
      @total_return = @num1 / @num2 
    end 
    
    "#{@total_return}"
  end 

end