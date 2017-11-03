require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/' do
    "This is just the boring start page."
  end

  get '/reversename/:name' do
    @name = params[:name].reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  # get '/say/:number/:phrase' do
  #   @number = params[:number].to_i
  #   @phrase = params[:phrase]
  #   @number.times do
  #     @phrase
  #   end
  # end

  get 'say/:word1/:word2/:word3/:word4/:word5' do
    binding.pry
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    binding.pry

    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
  end

end
