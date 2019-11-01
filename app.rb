require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/' do
    "Follow the tests in the RSPEC!"
  end

  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i ** 2
    @number.to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    @phrases = Array.new(@number, @phrase);
    @phrases.join(' ');
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
   @words = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]]
  @words =  @words.join(' ');
   @words << '.'
   @words
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation];
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @result = 0;
    if @operation == 'subtract'
      @result = @num1 - @num2
    elsif @operation == 'multiply'
      @result = @num1 * @num2
    elsif @operation == 'divide'
      @result = @num1 / @num2
    elsif @operation == 'add'
      @result = @num1 + @num2
    end
    @result.to_s
  end

end
