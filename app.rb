require_relative 'config/environment'

class App < Sinatra::Base
    
    get '/reversename/:name' do
      @name = params[:name]
      @name.reverse 
    end
      
    get '/square/:number' do
      @number = params[:number]
      @squared = (@number.to_i**2)
      @squared = @squared.to_s
      @squared
    end
    
    get '/say/:number/:phrase' do
        @number = params[:number]
        @phrase = params[:phrase]
        @number = @number.to_i
        @repeated_phrase = (@phrase + "\n")*@number
        @repeated_phrase.to_s
    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do 
        @word1 = params[:word1]
        @word2 = params[:word2]
        @word3 = params[:word3]
        @word4 = params[:word4]
        @word5 = params[:word5]
        @sentence = @word1 + " " + @word2 + " " + @word3 + " " + @word4 + " " + @word5 + "."
        @sentence
    end
        
    get '/:operation/:number1/:number2' do 
        @operation = params[:operation]
        @number1 = params[:number1]
        @number2 = params[:number2]
        @number1 = @number1.to_i
        @number2 = @number2.to_i
        
        @numbers = [@number1, @number2]
        @answer = @numbers.send(@operation)
        @answer.to_s
    end
    
    
end