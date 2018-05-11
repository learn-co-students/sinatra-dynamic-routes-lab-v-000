require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get '/say/:number/:phrase' do
    string = ""
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @num.times do
      string += "#{@phrase}\n"
    end
    string
    # @x.times {puts "hello"}
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    string = ""
    params.each do |k, v|
      string += v + " "
    end
    string[0...-1] + "."
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when "add"
      "#{params[:number1].to_i + params[:number2].to_i}"
    when "multiply"
      "#{params[:number1].to_i * params[:number2].to_i}"
    when "subtract"
      "#{params[:number1].to_i - params[:number2].to_i}"
    when "divide"
      "#{params[:number1].to_i / params[:number2].to_i}"
    end
  end
end

# %20
