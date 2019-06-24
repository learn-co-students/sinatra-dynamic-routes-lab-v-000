require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do 
    params[:name].reverse
  end
  
  get '/square/:number' do
    @integer = params[:number].to_i 
    ( @integer ** 2 ).to_s
  end
  
  get '/say/:number/:phrase' do 
    "#{params[:phrase]} " * params[:number].to_i
    # Note: #to_i is called on params[:number], not the entire line of code.
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    params.values.join(" ") + "."
  end
  
  get '/:operation/:number1/:number2' do 
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    
    case params[:operation]
    when "add"
      (@number1 + @number2).to_s
    when "subtract"
      (@number1 - @number2).to_s
    when "multiply"
      (@number1 * @number2).to_s
    when "divide"
      (@number1 / @number2).to_s
    end
  end

end