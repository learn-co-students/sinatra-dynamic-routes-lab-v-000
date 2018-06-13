require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get "/square/:number" do
    @num = params[:number].to_i
    "#{@num * @num}"
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    total = []
    @num.times do
      total << "#{@phrase}"
    end
    total.join(", ")
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @final_num = " "
    if params[:operation] == "add"
      @final_num = params[:number1].to_i + params[:number2].to_i
    elsif params[:operation] == "subtract"
      @final_num = params[:number1].to_i - params[:number2].to_i
    elsif params[:operation] == "multiply"
      @final_num = params[:number1].to_i * params[:number2].to_i
    elsif params[:operation] == "divide"
      @final_num = params[:number1].to_i / params[:number2].to_i
    end
    "#{@final_num}"
  end
end
