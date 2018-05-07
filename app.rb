require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversename = params[:name].reverse!
    @reversename
  end

  get '/square/:number' do
    @square = (params[:number].to_f)**2
    @square.to_s
  end

  get '/say/:number/:phrase' do
    @phrase = ""
    num = params[:number].to_i
    num.times do
      @phrase += params[:phrase]
    end
    "#{@phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_f
    num2 = params[:number2].to_f

    case params[:operation]
    when "add"
      sum = (num1 + num2).to_s
      sum
    when "subtract"
      dif = (num1 - num2).to_s
      dif
    when "multiply"
      prod = (num1 * num2).to_s
      prod
    when "divide"
      quo = (num1 / num2).to_s
      quo
    end
  end
end
