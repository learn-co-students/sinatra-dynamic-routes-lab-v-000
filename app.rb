require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
    get '/reversename/:name' do
        @name = params[:name]
        "#{@name.reverse}"
    end
    
    get '/square/:number' do
         @number = params[:number].to_i
        "#{@number * @number}"
    end
    
    get '/say/:number/:phrase' do
        @number = params[:number].to_i
        @phrase = params[:phrase]
        @full_phrase = ""
        @number.times do
            @full_phrase = @full_phrase + @phrase
        end
        "#{@full_phrase}"
    end
    
    get '/say/:word1/:word2/:word3/:word4/:word5' do
        @phrase = []
        params.each { |key, value| @phrase << value }
        "#{@phrase.join(" ")}."
    end
    
    get '/:operation/:number1/:number2' do
        @operation = params[:operation]
        @num1 = params[:number1].to_i
        @num2 = params[:number2].to_i
        if @operation == "add"
            "#{@num1 + @num2}"
        elsif @operation == "subtract"
            "#{@num1 - @num2}"
        elsif @operation == "multiply"
            "#{@num1 * @num2}"
        elsif @operation == "divide"
            "#{@num1 / @num2}"
        end
    end
    
end