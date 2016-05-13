require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    num = params[:number].to_i
    squared = num * num
    squared.to_s
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

  get '/:op/:number1/:number2' do
    op = params[:op]
    num_one = params[:number1].to_i
    num_two = params[:number2].to_i
    if op == "add"
      asnwer = num_one + num_two
    elsif op == "subtract"
      asnwer = num_one - num_two
    elsif op == "multiply"
      asnwer = num_one * num_two
    elsif op == "divide"
      asnwer = num_one / num_two
    end
    asnwer
  end
end
