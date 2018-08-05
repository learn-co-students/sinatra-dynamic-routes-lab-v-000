require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i*@number.to_i}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]
    output = ''
    "#{@number.to_i.times{output += @phrase}}"
    output
  end

  get '/say/:word1/:word2/:word3/:word4/:word5'do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    output = 'Unable to perform this operation'
    case params[:operation]
    when 'add'
      output = (@num1 + @num2).to_s
    when 'subtract'
      output = (@num1 - @num2).to_s
    when 'multiply'
      output = (@num1 * @num2).to_s
    when 'divide'
      output = (@num1 / @num2).to_s
    end
  end

end
