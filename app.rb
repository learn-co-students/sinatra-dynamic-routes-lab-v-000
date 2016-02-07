require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do 
    @user_name = params[:name].reverse
    "#{@user_name}"
  end

  get '/square/:number' do 
    @number = params[:number].to_i
    @square = @number * @number
    "#{@square}"
  end

  get '/say/:number/:phrase' do 
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase}\n" * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
     "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do 
    if params[:operation] == "add"
      then @result = params[:number1].to_i + params[:number2].to_i
        @result.to_s ##had to add variable because number was being added to the end of the string. 
                      ##instead of to the number. oddly this 
                      ##wasn't an issue for the other operations
    elsif params[:operation] == "subtract"
      then params[:number1] - params[:number2]
    elsif params[:operation] == "multiply"
      then params[:number1] * params[:number2]
    elsif params[:operation] == "divide"
      then params[:number1] / params[:number2]
    end
  end
end