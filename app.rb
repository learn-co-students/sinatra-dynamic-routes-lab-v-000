require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @user_name = params[:name]
    user_name = @user_name.reverse!
    "#{user_name}"
  end

  get '/square/:number' do
    @number = params[:number]
    numbers = @number.to_i ** 2
    "#{numbers.to_s}"
  end

  get '/say/:number/phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    @number.times do
      "#{@phrase}"
    end
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    words = "#{@word1} " + "#{@word2} " + "#{@word3} " + "#{@word4} " + "#{@word5}."
    "#{words}"
  end

  #get '/:operation/:number1/:number2' do
    #@operation = params[:operation]
    #@number1 = params[:number1]
    #@number2 = params[:number2]
    #numbers = @number1 @operation @number2
    #{}"#{numbers}"
  #end

end
