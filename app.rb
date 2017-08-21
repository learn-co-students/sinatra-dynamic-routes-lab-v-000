require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    @square = (params[:number].to_i) ** 2
    @square.to_s
  end

  get '/say/:number/:phrase' do
    string_returned = ""

    (params[:number].to_i).times do
      string_returned += "#{params[:phrase]}\n"
    end

    string_returned
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @integer1 = params[:number1].to_i
    @integer2 = params[:number2].to_i

    if @operation == "add"
      (@integer1 + @integer2).to_s
    elsif @operation == "subtract"
      (@integer1 - @integer2).to_s
    elsif @operation == "multiply"
      (@integer1 * @integer2).to_s
    elsif @operation == "divide"
      (@integer1 / @integer2).to_s
    else
      "Sorry, that operation is invalid. Please try again."
    end
  end
end
