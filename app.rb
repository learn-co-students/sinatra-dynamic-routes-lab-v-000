require_relative 'config/environment'

class App < Sinatra::Base


  get "/reversename/:name" do
    name = params[:name]
    "#{name.reverse}"
  end

  get "/square/:number" do
    number = params[:number].to_i
    "#{number * number}"
  end

  get "/say/:number/:phrase" do
    number = params[:number].to_i
    phrase = params[:phrase]
      "#{phrase}\n" * number
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    num_1 = params[:number1]
    num_2 = params[:number2]

    if params[:operation] == add
      "#{num_1 + num_2}"
    elsif params[:operation] == subtract
      "#{num_1 - num_2}"
    elsif params[:operation] == multiply
      "#{num_1 * num_2}"
    elsif params[:operation] == divide
      "#{num_1 / num_2}"
    end

  end



end