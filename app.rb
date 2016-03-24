require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
     @name = params[:name]
     @reversed_name = @name.reverse
      erb :reversename
  end

  get '/square/:number' do 
    @number=params[:number]
    
    @squared_number = (@number.to_i * @number.to_i).to_s

    erb :square
  end

  get '/say/:number/:phrase' do 
    
    @str = ""
    @number = params[:number].to_s
    @phrase = params[:phrase]
    
    @num = @number.to_i
    
   
  
    @num.times do |i|
     @str += "#{@phrase}\n"
    end


   erb :say
  
end

get '/say/:word1/:word2/:word3/:word4/:word5' do 
  str =""
    
  str << "#{params[:word1]} "
  str << "#{params[:word2]} "
  str << "#{params[:word3]} "
  str << "#{params[:word4]} "
  str << "#{params[:word5]}."
  str
end

get '/:operation/:number1/:number2' do
  answer=""
  if params[:operation] == "add"
    answer= (params[:number1].to_i) + (params[:number2].to_i)
   
  elsif params[:operation] == "subtract"
    answer= (params[:number1].to_i) - (params[:number2].to_i)
    
  elsif params[:operation] == "multiply"
    answer= (params[:number1].to_i) * (params[:number2].to_i)
    
  elsif params[:operation] == "divide"
    answer=(params[:number1].to_i) / (params[:number2].to_i)
    
  end
   answer.to_s
end

end