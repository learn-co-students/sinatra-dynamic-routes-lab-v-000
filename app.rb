require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    erb :reversename
  end

  get '/square/:number' do
    erb :squarenumber
  end

  get '/say/:number/:phrase' do
    erb :numberphrase
  end

  # GET /say/:word1/:word2/:word3/:word4/:word5
  #   sends a 200 status code (FAILED - 10)
  #   concatenates the words and adds a period (FAILED - 11)
  #   isn't hard-coded (FAILED - 12)
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    erb :saywords
  end
  # GET /:operation/:number1/:number2
  #   adds two numbers together (FAILED - 13)
  #   subtracts the second number from the first (FAILED - 14)
  #   multiplies two numbers together (FAILED - 15)
  #   divides the first number by the second number (FAILED - 16)


end
