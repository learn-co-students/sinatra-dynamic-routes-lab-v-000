require_relative 'config/environment'

class App < Sinatra::Base

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
    # @number.times { |x| print "#{@phrase}" }
    ("#{@phrase}" + "\n") * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    @words = params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5]
    "#{@words}."
  end

  get '/:operation/:number1/:number2' do
     @operation = params[:operation] 
     @numbersa = params[:number1].to_i + @operation + params[:number2].to_i
     @numbersa.to_s
  end

end




