require_relative 'config/environment'
class App < Sinatra::Base

  get "/reversename/:name" do
    name = params[:name].reverse
      "#{name}"
  end

  get "/square/:number" do
    num = params[:number].to_i
      "#{num * num}"
  end

  get "/multiply/:num1/:num2" do
    num1 = params[:num1]
    num2 = params[:num2]
    "#{num1.to_i * num2.to_i}"
  end

  get "/divide/:num1/:num2" do
    num1 = params[:num1]
    num2 = params[:num2]
    "#{num1.to_i / num2.to_i}"
  end

  get "/subtract/:num1/:num2" do
    num1 = params[:num1]
    num2 = params[:num2]
    "#{num1.to_i - num2.to_i}"
  end

  get "/add/:num1/:num2" do
    num1 = params[:num1]
    num2 = params[:num2]
    "#{num1.to_i + num2.to_i}"
  end

  get "/say/:number/:phrase" do
    string =" "
    num = params[:number].to_i
    num.times do
      string << "#{params[:phrase]}\n"
    end
    string
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
     "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
   end

end
