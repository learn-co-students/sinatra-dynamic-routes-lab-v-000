require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do 
    @name = params[:name].reverse!
  end
  
  get '/square/:number' do 
    @number = params[:number].to_i * params[:number].to_i 
    @number = @number.to_s 
  end
  
  get '/say/:number/:phrase' do 
    @number = params[:number].to_i 
    @phrase = params[:phrase]
    @phrases = String.new 
    @number.times do 
        @phrases = @phrases + @phrase  
    end
    @phrases 
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @five_words = String.new 
    @five_words = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "." 
  end
  
  get '/:operation/:number1/:number2' do 
    case params[:operation]
      when "add" 
        @solution = params[:number1].to_i + params[:number2].to_i
      when "subtract" 
        @solution = params[:number1].to_i - params[:number2].to_i 
      when "multiply" 
        @solution = params[:number1].to_i * params[:number2].to_i 
      when "divide" 
        @solution = params[:number1].to_i / params[:number2].to_i 
      end 
      @solution.to_s  
  end 
  
end 