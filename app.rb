require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @name = params[:name]
    @name.reverse
  end

  get "/square/:number" do
    @square = params[:number].to_i**2
    @square.to_s
  end

  get "/say/:number/:phrase" do
    response = ""
      params[:number].to_i.times do
        response += "#{params[:phrase]}\n"
    end
    response
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    params[:word1] + " " + params[:word2] + " " +  params[:word3] + " " +  params[:word4] + " " +  params[:word5] + "."
  end

  get "/:operation/:number1/:number2" do
    case params[:operation]
    when "add"
      last_response = params[:number1].to_i + params[:number2].to_i
    when "subtract"
      last_response = params[:number1].to_i - params[:number2].to_i
    when "multiply"
      last_response = params[:number1].to_i * params[:number2].to_i
    when "divide"
      last_response = params[:number1].to_i / params[:number2].to_i
    end
    last_response.to_s
  end

end
