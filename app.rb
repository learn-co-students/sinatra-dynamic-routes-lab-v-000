require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reverse = params[:name].reverse
    "#{@reverse}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    # binding.pry
    @repeat = params[:number].to_i
    @repeated = []
    @repeat.times do
        @repeated << params[:phrase]
    end
    "#{@repeated.join(" ")}."
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @final = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}"
    "#{@final}."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == 'add'
      final = params[:number1].to_i + params[:number2].to_i
    elsif params[:operation] == 'subtract'
      final = params[:number2].to_i - params[:number1].to_i
    elsif params[:operation] == 'multiply'
      final = params[:number1].to_i * params[:number2].to_i
    elsif params[:operation] == 'divide'
      final = params[:number1].to_i / params[:number2].to_i
    else
      final = "what the..."
    end
    final.to_s
  end
end
