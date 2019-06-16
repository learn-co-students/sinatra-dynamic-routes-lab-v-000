require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversed_name = params[:name].reverse
    "#{@reversed_name}"
  end

  get '/square/:number' do
    @squared = params[:number].to_i ** 2
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    number = params[:number].to_i
    @product = params[:phrase] * number
    "#{@product}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when 'add'
      (params[:number1].to_i + params[:number2].to_i).to_s
    when 'subtract'
      (params[:number1].to_i - params[:number2].to_i).to_s
    when 'multiply'
      (params[:number1].to_i * params[:number2].to_i).to_s
    when 'divide'
      (params[:number1].to_i / params[:number2].to_i).to_s
    end
  end
end
