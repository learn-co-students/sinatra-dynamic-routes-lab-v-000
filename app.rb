require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    n = params[:number].to_i
    "#{n * n}"
  end

  get '/say/:number/:phrase' do
    # binding.pry
    n = params[:number].to_i
    "#{n.to_s}"
    # sentence = "#{params[:phrase]}"
    # n.times{sentence}
    "ivan"
    # counter = 1
    # while counter < n + 1
    #   # sentence
    #   "Ivan"
    #   # "params[:phrase]"
    #   counter += 1
    # end
    # binding.pry
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]}" + " #{params[:word2]}" + " #{params[:word3]}" + " #{params[:word4]}" + " #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    case 'operation'
    when "add" then "#{params[:number1].to_i + params[:number2].to_i}"
    when "subtract" then "#{params[:number1].to_i - params[:number2].to_i}"
    when "multiply" then "#{params[:number1].to_i * params[:number2].to_i}"
    when "divide" then "#{params[:number1].to_i / params[:number2].to_i}"
    end
  end

end
