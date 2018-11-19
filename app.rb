require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    "#{params[:phrase]}" * params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      (params[:number1].to_i + params[:number2].to_i).to_s
    elsif params[:operation] == "subtract"
      (params[:number1].to_i - params[:number2].to_i).to_s
    elsif params[:operation] == "multiply"
      (params[:number1].to_i * params[:number2].to_i).to_s
    elsif params[:operation] == "divide"
      (params[:number1].to_i / params[:number2].to_i).to_s
    end
  end
  
end
