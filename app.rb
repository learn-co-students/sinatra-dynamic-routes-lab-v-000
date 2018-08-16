require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @reversed_name = params[:name].reverse

  end

  get '/square/:number' do
    @number_squared = params[:number].to_i ** 2
    @number_squared.to_s
  end

  get '/say/:number/:phrase' do
    @output = ""
    params[:number].to_i.times do
      @output += "#{params[:phrase]} "
    end
    @output
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when 'add'
      "#{params[:number1].to_i + params[:number2].to_i}"
    when 'subtract'
      "#{params[:number1].to_i - params[:number2].to_i}"
    when 'multiply'
      "#{params[:number1].to_i * params[:number2].to_i}"
    when 'divide'
      "#{params[:number1].to_i / params[:number2].to_i}"
    else
      "Invalid operation."
    end
  end
end
