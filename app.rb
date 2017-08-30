require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number**2}"
  end

  get '/say/:number/:phrase' do
    str = ""
    params[:number].to_i.times do
      str += "#{params[:phrase]}\n"
    end
    str
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num_1 = params[:number1].to_i
    @num_2 = params[:number2].to_i
    case @operation
    when "add"
      "#{@num_1 + @num_2}"
    when "subtract"
      "#{@num_1 - @num_2}"
    when "multiply"
      "#{@num_1 * @num_2}"
    when "divide"
      "#{@num_1 / @num_2}"
    end
  end
end
