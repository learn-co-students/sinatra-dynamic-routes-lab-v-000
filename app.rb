require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    params[:name].reverse
  end

  get "/square/:number" do
    "#{params[:number].to_i * params[:number].to_i}"
  end

  get "/say/:number/:phrase" do
    "#{params[:phrase] * params[:number].to_i}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:num1/:num2" do
    case params[:operation]
    when "add" then "#{params[:num1].to_i + params[:num2].to_i}"
    when "subtract" then "#{params[:num1].to_i - params[:num2].to_i}"
    when "multiply" then "#{params[:num1].to_i * params[:num2].to_i}"
    when "divide" then "#{params[:num1].to_i / params[:num2].to_i}"
    end
  end

end
