require_relative 'config/environment'

class App < Sinatra::Base

  get "/reversename/:name" do
    "#{params[:name].reverse}"
  end

  get "/square/:number" do
    "#{params[:number].to_i * params[:number].to_i}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    word1 = params[:word1]
    word2 = params[:word2]
    word3 = params[:word3]
    word4 = params[:word4]
    word5 = params[:word5]

    sentence = "#{word1} #{word2} #{word3} #{word4} #{word5}."
    sentence
  end

  get "/say/:number/:phrase" do
    number = params[:number].to_i
    phrase = params[:phrase]
    sentence = ""

    number.times do
      sentence += phrase + "\n"
    end

    sentence
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    case operation
    when "add"
      answer = number1 + number2
    when "subtract"
      answer = number1 - number2
    when "multiply"
      answer = number1 * number2
    when "divide"
      answer = number1 / number2
    end

    answer.to_s
  end
end
