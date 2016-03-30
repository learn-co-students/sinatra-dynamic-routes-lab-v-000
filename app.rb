require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do 
    @input_reversed = params[:name].reverse
    "#{@input_reversed}"
  end

  get '/square/:number' do 
    @squared_number = params[:number].to_i ** 2
    "#{@squared_number}"
  end

  get '/say/:number/:phrase' do 
    @input_number = params[:number].to_i
    @input_phrase = params[:phrase]
   
   "#{@input_phrase}\n" * @input_number 
   
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
   
  end

  get '/:operation/:number1/:number2' do 
    case params[:operation]
    when "add" 
      "#{params[:number1].to_i + params[:number2].to_i}"
    when "subtract"
      "#{params[:number1].to_i - params[:number2].to_i}"
    when "multiply"
      "#{params[:number1].to_i * params[:number2].to_i}"
    when "divide"
      "#{params[:number1].to_i / params[:number2].to_i}"
    end

      
   
  end


end