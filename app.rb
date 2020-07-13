require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @squared = @number * @number
    "#{@squared.to_s}"
  end

  get '/say/:number/:phrase' do
    answer = ''
    params[:number].to_i.times do
        answer = answer + params[:phrase]
      end
    answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    result = "unable to perform operation"
    case params[:operation]
    when "add"
      result = (number1 + number2).to_s
    when "subtract"
      result = (number1 - number2).to_s
    when "multiply"
      result = (number1 * number2).to_s
    when "divide"
      result = (number1 / number2).to_s
    end

  end

end
