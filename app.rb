require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i**2}"
  end

  get '/say/:number/:phrase' do
    r = ""
    params[:number].to_i.times do
      r += "#{params[:phrase]}\n"
    end

    r
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:captures].join(' ')}."
  end

  get '/:operation/:number1/:number2' do
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i
    op = nil

    case params[:operation]
    when 'add'
      op = '+'
    when 'subtract'
      op = '-'
    when 'multiply'
      op = '*'
    when 'divide'
      op = '/'
    end

    "#{n1.send(op, n2)}"
  end
end
