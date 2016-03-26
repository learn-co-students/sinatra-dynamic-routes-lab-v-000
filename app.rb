require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    @product = params[:number].to_i * params[:number].to_i
    "#{@product}"
  end

  get '/say/:number/:phrase' do
    "#{params[:phrase]}\n" * params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    case true
      when params[:operation] == 'add'
        @result = params[:number1].to_i + params[:number2].to_i
        "#{@result}"
      when params[:operation] == 'subtract'
        @result = params[:number2].to_i - params[:number1].to_i
        "#{@result}"
      when params[:operation] == 'multiply'
        @result = params[:number1].to_i * params[:number2].to_i
        "#{@result}"
      when params[:operation] == 'divide'
        @result = params[:number1].to_i/params[:number2].to_i
        "#{@result}"
      end
  end

end