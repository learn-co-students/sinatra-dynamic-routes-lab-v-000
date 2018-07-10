require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @user_name = params[:name]
    
    @user_name.reverse
  end

  get '/square/:number' do
    @input_num = params[:number]
    
    "#{@input_num.to_i * @input_num.to_i}"
  end

  get '/say/:number/:phrase' do
    @repeat = params[:number]
    message = ''
    @phrase = params[:phrase]
    
    @repeat.to_i.times do |i|
      message += @phrase
    end
    
    message
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @words = params
    
    "#{@words[:word1]} #{@words[:word2]} #{@words[:word3]} #{@words[:word4]} #{@words[:word5]}."
  end
  
  get '/:operation/:number1/:number2' do
    @num1 = params[:number1]
    @operation = params[:operation]
    @num2 = params[:number2]
    
    
  end

end

