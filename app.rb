require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name_backwards = params[:name].reverse!
    "#{@name_backwards}"
  end

  get '/square/:number' do
    @square_number = params[:number].to_i * params[:number].to_i
    "#{@square_number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @repeat = params[:phrase]

    "#{@repeat}\n" * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @sentence = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]].join(' ')
    "#{@sentence}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    case @operation
    when "add"
      "#{@num1 + @num2}"
    when "subtract"
      "#{@num1 - @num2}"
    when "multiply"
      "#{@num1 * @num2}"
    when "divide"
      "#{@num1 / @num2}"
    end
  end
end
