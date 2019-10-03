require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    user_name = params[:name].reverse
    "#{user_name}"
  end

  get '/square/:number' do
    num = params[:number]
    num_squared = num.to_i ** 2
    "#{num_squared}"
  end

  get '/say/:number/:phrase' do
    print_phrases = params[:phrase] * params[:number].to_i
    "#{print_phrases}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    case params[:operation]
        when 'add'
          answer = (number1 + number2).to_s
        when 'subtract'
          answer = (number1 - number2).to_s
        when 'multiply'
          answer = (number1 * number2).to_s
        when 'divide'
          answer = (number1 / number2).to_s
        end
        answer
      end

end
