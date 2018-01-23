require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    reversed = params[:name].reverse
    "#{reversed}"
  end

  get '/square/:number' do
    square = params[:number].to_i * params[:number].to_i
    "#{square}"
  end

  get '/say/:number/:phrase' do
    full_phrase = params[:phrase] * params[:number].to_i
    "#{full_phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
      "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

   get '/:operation/:number1/:number2' do
    case params[:operation]
    when 'add'
      result = params[:number1].to_i + params[:number2].to_i
    when 'subtract'
      result = params[:number1].to_i - params[:number2].to_i
    when 'divide'
      result = params[:number1].to_i / params[:number2].to_i
    when 'multiply'
      result = params[:number1].to_i * params[:number2].to_i
    end
    "#{result}"
  end

end