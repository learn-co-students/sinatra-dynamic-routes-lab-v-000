require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    (params[:number].to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
    saying = ''

      params[:number].to_i.times do
      saying += params[:phrase]
    end
    saying
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    result = ''

    case params[:operation]
    when 'add'
      result = (number1 + number2).to_s
    when 'subtract'
      result = (number1 - number2).to_s
    when 'multiply'
      result = (number1 * number2).to_s
    when 'divide'
      result = (number1 / number2).to_s
    end
  end
end
