require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    (params[:number].to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
    (params[:phrase] * params[:number].to_i).to_s
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    # params[:word1] + " " + params[:word2] + " " + params[:word3] + " " + params[:word4] + " " + params[:word5] + "."
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    op = params[:operation]
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i

    if op == "add"
      math = n1 + n2
    elsif op == "subtract"
      math = n1 - n2
    elsif op == "multiply"
      math = n1 * n2
    elsif op == "divide"
      math = n1 / n2
    end
    "#{math}"
  end

end