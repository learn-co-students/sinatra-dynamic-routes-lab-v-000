require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    # sends a 200 status code
    "#{params[:name].reverse}"
    # renders the name backwards
    # isn't hard-coded
  end



  get '/square/:number' do
    # sends a 200 status code
    "#{params[:number].to_i * params[:number].to_i}"
    # renders the square of the number
    # isn't hard-coded
  end



  get '/say/:number/:phrase' do
    # sends a 200 status code
    (params[:phrase].split("%20").join(" ") + "<br>") * params[:number].to_i
    # repeats the phrase n times
    # isn't hard-coded
  end



  get '/say/:word1/:word2/:word3/:word4/:word5' do
    # sends a 200 status code
    "#{params.values.join(" ")}."
    # concatenates the words and adds a period
    # isn't hard-coded
  end



  get '/:operation/:number1/:number2' do
    # adds two numbers together
    operation = params[:operation]
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i
    case params[:operation]
    when "add"
      "#{n1 + n2}"
    when "subtract"
      "#{n1 - n2}"
    when "multiply"
      "#{n1 * n2}"
    when "divide"
      "#{n1 / n2}"
    end
    # subtracts the second number from the first
    # multiplies two numbers together
    # divides the first number by the second number
  end



end