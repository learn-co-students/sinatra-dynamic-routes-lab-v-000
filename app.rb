require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}."
  end

  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i * @number.to_i}."
  end

  get '/say/:number/:phrase' do
    string = ""
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @number.times do
      string += "#{@phrase}\n"
    end
    string
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
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if @operation == 'add'
      @tot = @number1 + @number2
      "#{@tot}"
    elsif @operation == 'subtract'
      @tot = @number1 - @number2
      "#{@tot}"
    elsif @operation == 'multiply'
      @tot = @number1 * @number2
      "#{@tot}"
    else
      @tot = @number1 / @number2
      "#{@tot}"
    end
  end




end
