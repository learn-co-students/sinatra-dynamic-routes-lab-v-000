require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @reverse_name = @name.reverse
    "#{@name} reversed is #{@reverse_name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @squared = @number * @number
    "#{@number} squared equals #{@squared}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @times = params[:number].to_i
    (1..@times).collect do |p|
      "#{@phrase} "
    end
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  get '/:operation/:number1/:number2' do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

end
