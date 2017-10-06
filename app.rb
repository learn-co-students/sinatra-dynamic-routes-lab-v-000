require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @user_name = params[:name].reverse
    "Hello #{@user_name}!"
  end

  get '/square/:number' do
    @num = params[:number].to_i * params[:number].to_i
    "#{@num}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @number = params[:number].to_i
    "#{@phrase * @number}"
    end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @sentence = (params[:word1] + ' ' + params[:word2] + ' ' + params[:word3] + ' ' + params[:word4] + ' ' + params[:word5])
    "#{@sentence}."
  end

  get '/:operation/:number1/:number2' do
    @sum = params[:number1].to_i + params[:number2].to_i
    @subtr = params[:number1].to_i - params[:number2].to_i
    @product = params[:number1].to_i * params[:number2].to_i
    @div = params[:number1].to_i / params[:number2].to_i
    "#{@sum}#{@subtr}#{@product}#{@div}"
  end
end
