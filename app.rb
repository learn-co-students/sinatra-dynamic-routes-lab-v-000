require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    name = params[:name]
    "#{name.reverse}"
  end

  get '/square/:number' do
    number = params[:number].to_i
    "#{number ** 2}"
  end

  get '/say/:number/:phrase' do
    number = params[:number].to_i
    final_phrase = ""
    number.times {final_phrase << "#{params[:phrase]}\n"}
    final_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} "\
    "#{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    if "#{params[:operation]}" == "add"
      "#{number2 + number1}"
    elsif "#{params[:operation]}" == "subtract"
      "#{number2 - number1}"
    elsif "#{params[:operation]}" == "multiply"
      "#{number2 * number1}"
    elsif "#{params[:operation]}" == "divide"
      "#{number1 / number2}"
    end
  end
end