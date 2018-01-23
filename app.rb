require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    reversed_name = params[:name].reverse
    reversed_name
  end

  get '/square/:number' do
    @number = params[:number].to_i
    (@number * @number).to_s
  end

  get '/say/:number/:phrase' do
    @string = ""
    @number = params[:number].to_i
    @number.times do
      @string += "#{params[:phrase]}\n"
    end
    @string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      @sum = (params[:number1].to_i) + (params[:number2].to_i)
      @sum.to_s
    elsif params[:operation] == "subtract"
      @difference = (params[:number1].to_i) - (params[:number2].to_i)
      @difference.to_s
    elsif params[:operation] == "multiply"
      @product = (params[:number1].to_i) * (params[:number2].to_i)
      @product.to_s
    elsif params[:operation] == "divide"
      @division = (params[:number1].to_i) / (params[:number2].to_i)
      @division.to_s
    end
  end

end
