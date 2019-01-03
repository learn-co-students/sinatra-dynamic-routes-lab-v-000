require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/multiply/:num1/:num2' do
    multiplied = params[:num1].to_i * params[:num2].to_i
    "#{multiplied}"
  end

  get '/square/:number' do
    square_num = params[:number].to_i ** 2
    "#{square_num}"
  end

  get '/say/:number/:phrase' do
    say_phrase = ''
    params[:number].to_i.times do
      say_phrase += params[:phrase]
    end
    say_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    num_1 = params[:number1].to_i
    num_2 = params[:number2].to_i

    complete = ''

    case params[:operation]
    when 'add'
      complete = (num_1 + num_2).to_s
    when 'subtract'
      complete = (num_1 - num_2).to_s
    when 'multiply'
      complete = (num_1 * num_2).to_s
    when 'divide'
      complete = (num_1 / num_2).to_s
    end
  end
end
