require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    name = params[:name]
    "#{name.reverse}"
  end

  get '/square/:number' do
    num = params[:number].to_i
    "#{num **= 2}"
  end

  get '/say/:number/:phrase' do
    @a = params[:number].to_i
    @b = params[:phrase]
    str = ""
    @a.times do

      str += "#{@b}\n"
    end
    str
  end


  get '/say/:word1/:word2/:word3/:word4/:word5' do
    a = params[:word1]
    b = params[:word2]
    c = params[:word3]
    d = params[:word4]
    e = params[:word5]
    "#{a} #{b} #{c} #{d} #{e}."
  end

  get '/:operation/:number1/:number2' do
    @x = params[:number1].to_i
    @y = params[:number2].to_i
    @z = params[:operation]
    case @z
    when subtract then @x - @y
    when add then @x + @y
    when multiply then @x * @y
    when divide then @x / @y 
    end
  end

end
