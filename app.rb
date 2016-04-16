require_relative 'config/environment'

class App < Sinatra::Base
  
  get "/reversename/:name" do
    "#{params[:name].reverse}"
  end
  
  get "/square/:number" do
    n = params[:number].to_i
    "#{n * n}"
  end
  
  get "/say/:number/:phrase" do
    output = ""
    n = params[:number].to_i
    n.times{ output << "#{params[:phrase]}" + "\n" }
    
    output
  end
  
  get "/say/:word1/:word2/:word3/:word4/:word5" do
    a = params[:word1]
    b = params[:word2]
    c = params[:word3]
    d = params[:word4]
    e = params[:word5]
    
    "#{a} #{b} #{c} #{d} #{e}."
  end
  
  get "/:operation/:number1/:number2" do
    op = params[:operation]
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i
    
    case op
    when "add"
      "#{n1 + n2}"
    when "subtract"
      "#{n1 - n2}"
    when "divide"
      "#{n1 / n2}"
    when "multiply"
      "#{n1 * n2}"
    end
  end
  
end