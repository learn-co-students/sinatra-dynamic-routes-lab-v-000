require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    @user_name = params[:name]
    "#{@user_name.to_s.reverse!}"
  end

  get '/square/:number' do
    @number = params[:number]
    "#{@number.to_i * 4}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase].to_s
    @phrase << "\n"
    "#{@phrase * @number}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @sentence = []
    @sentence << params[:word1]
    @sentence << params[:word2]
    @sentence << params[:word3]
    @sentence << params[:word4]
    @sentence << params[:word5]
    "#{@sentence.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    case params[:operation].to_s
    when "add"
      "#{@number1 + @number2}"
    when "subtract"
      "#{@number1 - @number2}"
    when "divide"
      "#{@number1 / @number2}"
    when "multiply"
      "#{@number1 * @number2}"
    end
  end


end
