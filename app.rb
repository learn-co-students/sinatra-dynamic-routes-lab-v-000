require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @new_name = params[:name].reverse!
    "#{@new_name}"
  end

  get '/square/:number' do
    @square = params[:number].to_i ** 2
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    answer = ''

    params[:number].to_i.times do
      answer += params[:phrase]
    end
    answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    case params[:operation]
      when 'add'
        answer = (@num1+@num2).to_s
      when 'subtract'
        answer = (@num1-@num2).to_s
      when 'multiply'
        answer = (@num1*@num2).to_s
      when 'divide'
        answer = (@num1/@num2).to_s
    end
  end
end
