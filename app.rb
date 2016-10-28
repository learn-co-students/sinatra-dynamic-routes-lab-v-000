require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number]
    @number = @number.to_i**2
    @number.to_s
  end

  get '/say/:number/:phrase' do
    @num = params[:number]
    @phrase = params[:phrase]
    @num = @num.to_i
    string = ""
    @num.times do
    string += "#{@phrase}\n"
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]

    if @operation == 'add'
      final =  @number1.to_i + @number2.to_i
    elsif  @operation == 'subtract'
      final =  @number1.to_i - @number2.to_i
    elsif @operation == 'multiply'
      final =  @number1.to_i * @number2.to_i
    elsif @operation == 'divide'
      final =  @number1.to_i/@number2.to_i
    end
    final.to_s
  end

end
