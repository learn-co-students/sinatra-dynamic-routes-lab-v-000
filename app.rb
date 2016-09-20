require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    params[:name].reverse
  end

  get "/square/:number" do
    (params[:number].to_i**2).to_s
  end

  get "/say/:number/:phrase" do
    phrases = []
    params[:number].to_i.times do
      phrases << "#{params[:phrase]}\n"
    end
    phrases
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    opp = params[:operation]
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i

    case opp
    when "add"
      "#{n1 + n2}"
    when "subtract"
      "#{n1 - n2}"
    when "multiply"
      "#{n1 * n2}"
    when "divide"
      "#{n1 / n2}"
    end
  end

end
