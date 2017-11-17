require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    (params[:number].to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
    params[:phrase] * (params[:number].to_i)
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
       "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do

    first_number = params[:number1].to_i
    second_number = params[:number2].to_i

    result = ""

    case params[:operation]
    when 'add'
      result = (first_number + second_number).to_s

    when 'subtract'
      result = (first_number - second_number).to_s

    when 'multiply'
      result = (first_number * second_number).to_s

    when 'divide'
      result = (first_number / second_number).to_s
    end
  end
end
