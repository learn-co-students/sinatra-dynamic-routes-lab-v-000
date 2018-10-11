require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    @name_reversed = params[:name].reverse 
    "#{@name_reversed}"
  end
  
  get '/square/:number' do
    @number_squared = params[:number].to_i ** 2
    "#{@number_squared}"
  end
  
  get '/say/:number/:phrase' do
    @num_phrase = params[:phrase] * params[:number].to_i  
    "#{@num_phrase}"
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words_join = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]].join(' ') + "."
    "#{@words_join}"
  end
  
  get '/:operation/:number1/:number2' do
    @operation_get = params[:operation].to_sym
    @first_number = params[:number1].to_i
    @second_number = params[:number2].to_i
    @operations = {:add => "+", :subtract => "-", :multiply => "*", :divide => "/"}
    @total = (@first_number.method(@operations[@operation_get])).call(@second_number)
    "#{@total}"
  end
  
end