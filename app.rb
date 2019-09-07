require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    name = params[:name]
    "#{name.reverse!}"
  end

  get '/square/:num' do
    num = params[:num].to_f
    "#{num ** 2}"
  end

  get '/say/:number/:phrase' do
    n = params[:number].to_i
    phr = params[:phrase].gsub(/%20/, " ")
    "#{phr * n}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params.values.join(" ").concat('.')}"
  end

  get '/:operation/:number1/:number2' do
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i

    case params[:operation]
    when "add"
      "#{n1 + n2}"
    when 'subtract'
      "#{n1 - n2}"
    when "multiply"
      "#{n1 * n2}"
    when "divide"
      "#{n1 / n2}"
    end
  end
end
