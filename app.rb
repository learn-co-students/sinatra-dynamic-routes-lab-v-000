require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
  @name = params[:name]
  "#{@name.reverse}"
  end

  get '/square/:number' do
    #@num = params[:num].to_i
    #"#{@num * @num}".to_s
     # => not sure why the above didn't work...
    @num = params[:number].to_i ** 2
    "#{@num}"
  end

  get '/say/:number/:phrase' do
    @number, @phrase = params[:number].to_i, params[:phrase]
      "#{@phrase}\n" * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1, @word2, @word3, @word4, @word5 = params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation, @number1, @number2 = params[:operation], params[:number1].to_i, params[:number2].to_i
    @number1.send(@operation, @number2)
  end




end