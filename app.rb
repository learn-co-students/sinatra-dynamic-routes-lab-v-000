require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reversedname = params[:name].to_s.reverse!
    "#{@reversedname}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
    @result = (@number ** 2).to_s
    "#{@result}"
  end

  get '/say/:number/:phrase' do
    string = String.new
    params[:number].to_i.times do
      string += "#{params[:phrase]}\n"
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    num_one = params[:number1].to_i
    num_two = params[:number2].to_i
    if operation == "add"
      answer = num_one + num_two
    elsif operation == "subtract"
      answer = num_one - num_two
    elsif operation == "multiply"
      answer = num_one * num_two
    elsif operation == "divide"
      answer = num_one / num_two
    end
    "#{answer}"
  end
end
