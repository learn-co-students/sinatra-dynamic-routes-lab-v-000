
require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @user_name = params[:name].reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    answer = (@number * @number).to_s
    "#{answer}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase}\n" * @number
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
    answer = case params[:operation]
      when 'add'
        params[:number1].to_i + params[:number2].to_i
      when 'subtract'
        params[:number1].to_i - params[:number2].to_i
      when 'divide'
        params[:number1].to_i / params[:number2].to_i
      when 'multiply'
        params[:number1].to_i * params[:number2].to_i
       else
    end
    "#{answer}"
  end
end
