require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    @num = params[:number].to_i
    (@num**2).to_s
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase}\n" * @num
 end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operator = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

  case @operator
    when "add"
      (@num1 + @num2).to_s
    when "subtract"
      (@num2 - @num1).to_s
    when "multiply"
      (@num1 * @num2).to_s
    when "divide"
      (@num1 / @num2).to_s
    end
  end
end
