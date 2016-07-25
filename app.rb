require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @reversed_name = params[:name].split(//).reverse.join
    "#{@reversed_name}"
  end

  get '/square/:number' do
    @squared_number = params[:number].to_i * params[:number].to_i
    "#{@squared_number}"
  end

  get '/say/:number/:phrase' do
    @phrase_string = ""
    params[:number].to_i.times do
      @phrase_string += "#{params[:phrase]}\n"
    end
    "#{@phrase_string.strip}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @sentence = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    "#{@sentence}"
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when "add" then "#{params[:number1].to_i + params[:number2].to_i}"
    when "subtract" then "#{params[:number1].to_i - params[:number2].to_i}"
    when "multiply" then "#{params[:number1].to_i * params[:number2].to_i}"
    when "divide" then "#{params[:number1].to_i / params[:number2].to_i}"
    end
  end
end