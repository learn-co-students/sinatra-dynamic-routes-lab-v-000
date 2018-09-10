require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.to_s.reverse}"
  end

  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number]
    @int = @num.to_i
    @phrase =params[:phrase]
    2.times do
      "#{@phrase}"
    end
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[word1]
    @word2 = params[word2]
    @word3 = params[word3]
    @word4 = params[word4]
    @word5 = params[word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}"
  end

end
