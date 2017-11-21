require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]

    @reversed_name = @name.reverse

    "#{@reversed_name}"
  end

  get '/square/:number' do
    @number = params[:number]

    @squared_number = (@number.to_i)**2

    "#{@squared_number}"
  end

  get '/say/:number/:phrase' do

    @phrase = params[:phrase].gsub('%20', ' ')
    @num_of_times = params[:number].to_i

    @printed_string = ""

    @num_of_times.times do
      @printed_string << "#{@phrase} "
    end
    "#{@printed_string}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @string = ""

    params.each do |k,v|
      @string << "#{v} "
    end

    "#{@string.strip}."
  end

  get '/:operation/:number1/:number2' do

    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    case @operation
    when "add"
      "#{@num1 + @num2}"
    when "subtract"
      "#{@num1 - @num2}"
    when "multiply"
      "#{@num1 * @num2}"
    when "divide"
      "#{@num1 / @num2}"
    end
  end




end
