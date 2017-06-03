require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    number = params[:number].to_i
    "#{number **2}"
  end

  get '/say/:number/:phrase' do
    number = params[:number].to_i
    (1..number).collect {|i| "#{params[:phrase]}\n"}
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    nr1 = params[:number1].to_i
    nr2 = params[:number2].to_i
    case params[:operation]
    when "add"
      "#{nr1 + nr2}"
    when "subtract"
      "#{nr2 - nr1}"
    when "multiply"
      "#{nr1 * nr2}"
    when "divide"
      "#{nr1 / nr2}"
    else
      "Unknown operation"
    end
  end

end
