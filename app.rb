require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @user_name = params[:name]
    @user_name.reverse
  end

  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i**2}"
  end

  get '/say/:number/:phrase' do
    p = ""
    @number = params[:number]
    @phrase = params[:phrase]
    @number.to_i.times do
      p += "#{@phrase}\n"
    end
    p
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1, @word2, @word3, @word4, @word5 = params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1]
    @number2 = params[:number2]
    @operation = params[:operation]
    case @operation
    when 'add'
      (@number1.to_i + @number2.to_i).to_s
    when 'subtract'
      (@number1.to_i - @number2.to_i).to_s
    when 'multiply'
      (@number1.to_i * @number2.to_i).to_s
    when 'divide'
      (@number1.to_i / @number2.to_i).to_s
    end
  end

end
