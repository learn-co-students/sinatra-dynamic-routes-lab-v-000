require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @reverse = params[:name].reverse
    "#{@reverse}"
  end

  get '/square/:number' do
    @square = params[:number].to_i ** 2
    "#{@square}"
  end

  get "/say/:number/:phrase" do
    @repeat = params[:phrase] * params[:number].to_i
    "#{@repeat}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    answer = ''
    case params[:operation]
    when 'add'
      answer = params[:number1].to_i + params[:number2].to_i
    when 'subtract'
      answer = params[:number1].to_i - params[:number2].to_i
    when 'multiply'
      answer = params[:number1].to_i * params[:number2].to_i
    when 'divide'
      answer = params[:number1].to_i / params[:number2].to_i
    end
    "#{answer}"
  end
end
