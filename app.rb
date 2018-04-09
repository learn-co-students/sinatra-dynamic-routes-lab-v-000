require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @new_name = params[:name].reverse
    "#{@new_name}"
  end

  get '/square/:number' do
    @new_num = params[:number].to_i * params[:number].to_i
    "#{@new_num}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase}" * @num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @opr = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    if @opr == "add"
      "#{@num1 + @num2}"
    elsif @opr == "subtract"
      "#{@num1 - @num2}"
    elsif @opr == "multiply"
      "#{@num1 * @num2}"
    else
      "#{@num1 / @num2}"
    end
  end

end
