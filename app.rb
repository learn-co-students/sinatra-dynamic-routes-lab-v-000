require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i**2}"
  end

  get '/say/:number/:phrase' do
    "#{params[:number].to_i.times.map { params[:phrase] }.join("\n")}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when /add/
      "#{params[:number1].to_i + params[:number2].to_i}"
    when /subtract/
      "#{params[:number1].to_i - params[:number2].to_i}"
    when /multiply/
      "#{params[:number1].to_i * params[:number2].to_i}"
    when /divide/
      "#{params[:number] / params[:number2].to_i}"
    else
      "I don't know what you want me to do."
    end
  end
end
