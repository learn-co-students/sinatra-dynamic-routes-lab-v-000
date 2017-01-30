require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    params[:name].reverse
  end

  get '/square/:number' do
    (params[:number].to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
    str = ""
    params[:number].to_i.times do
      str << params[:phrase] + "\n"
    end
    str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    n1 = params[:number1]; n2 = params[:number2]
    case params[:operation]
    when "add"
      (n1.to_i + n2.to_i).to_s
    when "subtract"
      (n1.to_i - n2.to_i).to_s
    when "multiply"
      (n1.to_i * n2.to_i).to_s
    when "divide"
      (n1.to_i / n2.to_i).to_s
    end
  end
end