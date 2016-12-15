require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    params[:name].reverse
  end

  get "/square/:number" do
    (params[:number].to_i ** 2).to_s
  end

  get "/say/:number/:phrase" do
    Array.new(params[:number].to_i, params[:phrase]).join("\n")
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]].join(" ") + "."
  end

  get "/:operation/:number1/:number2" do
    ops = {
      "add" => :+,
      "subtract" => :-,
      "multiply" => :*,
      "divide" => :/
    }
    params[number1].to_i.send(ops[params[:operation]], params[number2].to_i).to_s
  end

end
