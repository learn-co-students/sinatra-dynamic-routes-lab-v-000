require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get '/say/:number/:phrase' do
    @output = []
    params[:number].to_i.times do
      @output << "#{params[:phrase]}\n"
    end
    "#{@output.join('')}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    sentence = []
    params.each do |key, value|
      sentence << value.to_s
    end
    sentence.first.capitalize!
    @output = sentence.join(" ") + "."
    "#{@output}"
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    case operation
    when "add"
      @output = num1 + num2
    when "subtract"
      @output = num1 - num2
    when "multiply"
      @output = num1 * num2
    when "divide"
      @output = num1 / num2
    end
    "#{@output}"
  end
end
