require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reverse_name = params[:name].reverse
    "#{@reverse_name}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    a = params[:number].to_i
      "#{params[:phrase]}\n" * a
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      a = params[:number1].to_i + params[:number2].to_i
      "#{a}"
    elsif params[:operation] == "subtract"
      a = params[:number1].to_i - params[:number2].to_i
      "#{a}"
    elsif params[:operation] == "divide"
      a = params[:number1].to_i / params[:number2].to_i
      "#{a}"
    elsif params[:operation] == "multiply"
      a = params[:number1].to_i * params[:number2].to_i
      "#{a}"
    end
  end


end