require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    square = params[:number].to_i * params[:number].to_i
    square.to_s
  end

  get '/say/:number/:phrase' do
    phrase_rept = ""
      params[:number].to_i.times do
        phrase_rept += "#{params[:phrase]}\n"
      end
    phrase_rept
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
     "#{params[:number1].to_i + params[:number2].to_i}"
    elsif params[:operation] == "subtract"
     "#{params[:number1].to_i - params[:number2].to_i}"
    elsif params[:operation] == "multiply"
      "#{params[:number1].to_i*params[:number2].to_i}"
    else
      "#{params[:number1].to_i/params[:number2].to_i}"
    end
  end
end
