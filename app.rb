require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name}".reverse 
  end

  get '/square/:number' do
    @number = params[:number] 
    "#{@number.to_i ** 2}"
  end
  
  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    "#{@phrase * @number.to_i}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word_1 = params[:word1]
    @word_2 = params[:word2]
    @word_3 = params[:word3]
    @word_4 = params[:word4]
    @word_5 = params[:word5]
    "#{@word_1} #{@word_2} #{@word_3} #{@word_4} #{@word_5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number_1 = params[:number1]
    @number_2 = params[:number2]
    # eval"#{@number_1.to_i @operation @number_2.to_i}"
    # @number_1.to_i.send(@operation, @number_2.to_i)
    # "#{@number_1.to_i + @number_2.to_i}"
    "#{@number_1.to_i + @number_2.to_i} || #{@number_1.to_i - @number_2.to_i} || 
    #{@number_1.to_i * @number_2.to_i} || #{@number_1.to_i / @number_2.to_i}"
  end 

end