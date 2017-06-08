require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    erb :reverse
  end

  get '/square/:number' do
    square = params[:number].to_i*params[:number].to_i
    "The square is #{square}"
  end

  get "/say/:number/:phrase" do
    wholephrase = [params[:phrase],"\n"].join*(params[:number].to_i)
    "#{wholephrase}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."

  end

  get "/:operation/:number1/:number2" do
    case params[:operation]
      when "add"
        sum = params[:number1].to_i+params[:number2].to_i
        "The sum is #{sum}"
      when "subtract"
        difference = params[:number1].to_i-params[:number2].to_i
        "The difference is #{difference}"
      when "multiply"
        product = params[:number1].to_i*params[:number2].to_i
        "The product is #{product}"
      when "divide"
        divided = params[:number1].to_i/params[:number2].to_i
        "Divided is #{divided}"
    end

  end

end
