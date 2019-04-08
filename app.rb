require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
    @name_reverse = params[:name].reverse 
    "#{@name_reverse}" 
  end
  
  get '/square/:number' do 
    @square_of_number = (params[:number].to_i)**2
    "#{@square_of_number}".to_s
  end
  
  get  '/say/:number/:phrase' do 
    @new_string = params[:phrase]*params[:number].to_i
    "#{@new_string}"
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @phrase = []
    params.each_value {|value| @phrase << value} 
    "#{@phrase.join(" ")}."
  end
  
  get '/:operation/:number1/:number2' do 
    if params[:operation] == "add" 
      @addition = params[:number1].to_i + params[:number2].to_i 
      "#{@addition}".to_s 
    elsif params[:operation] == "subtract" 
      @subtraction = params[:number1].to_i - params[:number2].to_i 
      "#{@subtraction}".to_s
    elsif params[:operation] == "multiply" 
      @multiplication = params[:number1].to_i * params[:number2].to_i 
      "#{@multiplication}".to_s 
    else params[:operation] == "divide" 
      @division = params[:number1].to_i / params[:number2].to_i 
      "#{@division}".to_s 
    end
  end
end