require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do 
    "Hello World"
  end

  get '/reversename/:name' do 
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do 
    @sqaure = params[:number].to_i * params[:number].to_i
    "#{@sqaure}"
  end

  get '/say/:number/:phrase' do 
    @number = params[:number].to_i
    @phrase = params[:phrase]
    # binding.pry
    string = ''
    @number.times do |i|
      string << "#{@phrase}\n"
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    string = params.collect do |key,value|
      value
    end
    "#{string.join(' ')}."
  end

  get '/:operation/:number1/:number2' do 
    @operation = params[:operation]
    @number_1 = params[:number1]
    @number_2 = params[:number2]
    @add = @number_1.to_i + @number_2.to_i
    @subtract = @number_2.to_i - @number_1.to_i
    @multiply = @number_1.to_i * @number_2.to_i
    @divide = @number_1.to_i / @number_2.to_i
    if @operation == 'add'
      string = @add.to_s
    elsif @operation == 'subtract'
      string = @subtract.to_s
    elsif @operation == 'multiply'
      string = @multiply.to_s
    elsif @operation == 'divide'
      string = @divide.to_s
    end
    string        
  end
end