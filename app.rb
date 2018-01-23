require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
    @user_name = params[:name]
    name = @user_name
    "#{name.reverse}"
  end

  get "/square/:number" do
    @square_number = params[:number]
    square = @square_number.to_i
    squared = square * square
    "#{squared}"
  end

  get "/say/:number/:phrase" do
    number = params[:number]
    phrase = params[:phrase]
    counter = number.to_i
    phrase_string = ""
    counter.times do
      phrase_string << "#{phrase} "
    end
    "#{phrase_string}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    words = []
    words[0] = params[:word1]
    words[1] = params[:word2]
    words[2] = params[:word3]
    words[3] = params[:word4]
    words[4] = params[:word5]
    phrase_string = ""
    counter = 0
    until counter == words.size
      phrase_string << "#{words[counter]} "
      counter += 1
    end
    phrase_string.chop! << "."
    "#{phrase_string}"
  end

  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    case params[:operation]
    when 'add'
      answer = (number1 + number2)
    when 'subtract'
      answer = (number1 - number2)
    when 'multiply'
      answer = (number1 * number2)
    when 'divide'
      answer = (number1 / number2)
    end
    answer.to_s
  end
end
