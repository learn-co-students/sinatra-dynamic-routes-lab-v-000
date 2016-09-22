require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @rev_name = params[:name].reverse!
    "#{@rev_name}"
  end

  get "/square/:number" do
    @sq_num = params[:number].to_i ** 2
    "#{@sq_num}"
  end

  get "/say/:number/:phrase" do
    result = ""
    (params[:number].to_i).times do
      result += "#{params[:phrase]}\n"
    end
    result
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    result = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:number1/:number2" do
    result = nil
    if params[:operation] == "add"
      result = params[:number1].to_i + params[:number2].to_i
    elsif params[:operation] == "subtract"
      result = params[:number1].to_i - params[:number2].to_i
    elsif params[:operation] == "multiply"
      result = params[:number1].to_i * params[:number2].to_i
    else
      result = params[:number1].to_i / params[:number2].to_i
    end
    result.to_s
  end

end
