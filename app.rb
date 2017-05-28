require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    params[:number].to_i.times.collect{|i| params[:phrase] }.join("\n")
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params.select{|key, param| key.include?("word")}.collect{|key, param| param}.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    case params[:operation]
    when "add"
      return "#{num1 + num2}"
    when "subtract"
      return "#{num1 - num2}"
    when "multiply"
      return "#{num1 * num2}"
    when "divide"
      return "#{num1 / num2}"
    else
      status 404
    end
  end
end
