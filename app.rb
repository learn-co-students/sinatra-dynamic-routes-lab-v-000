require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    num = params[:number].to_i
    "#{num**2}"
  end

  get '/say/:number/:phrase' do
      n = params[:number].to_i
      p = params[:phrase].to_s
      str = ""
      n.times {str += "#{p}\n"}
      str   
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
     "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    o = params[:operation]
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i
    if o == "add"
      a = n1 + n2
    elsif o == "subtract"
      a = n1 - n2
    elsif o == "multiply"
      a = n1 * n2
    elsif o == "divide"
      a = n1 / n2
    else
      a = "Cannot do this operation."
    end
    a.to_s
  end



end