require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @user_name=params[:name]
    "#{@user_name}".reverse!
  end

  get '/square/:number' do
    @num=params[:number].to_i
    "#{@num**2}".to_s
  end

  get '/say/:number/:phrase' do
    @num=params[:number].to_i
    @phrase=params[:phrase]
    "#{@phrase}\n" * @num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1=params[:word1]
    @word2=params[:word2]
    @word3=params[:word3]
    @word4=params[:word4]
    @word5=params[:word5]
    "#{@word1}\s" "#{@word2}\s" "#{@word3}\s" "#{@word4}\s" "#{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation=params[:operation]
    @num1=params[:number1].to_i
    @num2=params[:number2].to_i
    if @operation=="add"
      "#{@num1 + @num2}"
    elsif @operation=="subtract"
      "#{@num1-@num2}"
    elsif @operation=="multiply"
      "#{@num1*@num2}"
    elsif @operation=="divide"
      "#{@num1/@num2}"
    end
  end

end
