require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    params[:name].reverse
  end

  get "/square/:number" do
    num = params[:number].to_i
    (num * num).to_s
  end

  get "/say/:number/:phrase" do
    num = params[:number].to_i
    ph = ""

    num.times do
      ph += "#{params[:phrase]}\n"
    end

    ph
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    op = params[:operation]
    one = params[:number1].to_i
    two = params[:number2].to_i

    case op
    when "multiply"
      (one * two).to_s
    when "add"
      (one + two).to_s
    when "subtract"
      (one - two).to_s
    when "divide"
      (one / two).to_s
    end
  end

end
