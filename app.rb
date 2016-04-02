require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name=params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
  @number = params[:number].to_i
    "#{@number ** 2}"
  end

  get '/say/:number/:phrase' do 
  @phrase = params[:phrase].gsub("%20", " ")
  @repeater = ""
  params[:number].to_i.times do |n|
    @repeater << @phrase + "\n"
    end
    "#{@repeater}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params[:captures].join(" ") << "."
  end


  get '/:operation/:number1/:number2' do

    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    case @operation
    when "add"
      @result = @number1 + @number2
    when "subtract"
      @result = @number2 - @number1
    when "multiply"
      @result = @number1 * @number2
    when "divide"
      @result = @number1.to_f / @number2.to_f
    end
  "#{@result}"
  end
end
