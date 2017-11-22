require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name].reverse
  end

  get '/square/:number' do
    @square = params[:number].to_i ** 2
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    text = ""
    params[:number].to_i.times do
      text += params[:phrase]
    end
    "#{text}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @sum = params[:number1].to_i + params[:number2].to_i
    @difference = params[:number1].to_i - params[:number2].to_i
    @product = params[:number1].to_i * params[:number2].to_i
    @dividend = params[:number1].to_i / params[:number2].to_i
    "#{@sum} #{@difference} #{@product} #{@dividend}"
  end
end