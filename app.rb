require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i**2}"
  end

  get '/say/:number/:phrase' do
    output = ""
    params[:number].to_i.times do
      output << "#{params[:phrase]}\n"
    end
    output
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation].downcase == "add"
      "#{params[:number1].to_i+params[:number2].to_i}"
    elsif params[:operation].downcase == "subtract"
      "#{params[:number1].to_i-params[:number2].to_i}"
    elsif params[:operation].downcase == "multiply"
      "#{params[:number1].to_i*params[:number2].to_i}"
    elsif params[:operation].downcase == "divide"
      "#{params[:number1].to_i/params[:number2].to_i}"
    else
      "Couldn't understand your operation."
    end
  end

end
