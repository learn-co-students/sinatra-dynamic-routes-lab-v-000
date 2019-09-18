require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
      params[:name].reverse
  end

  get '/square/:number' do
      @answer = params[:number].to_i ** 2
      "#{@answer.to_s}"
  end

  get '/say/:number/:phrase' do
      temp = params[:phrase]
      counter = 1
        while counter < params[:number].to_i
          temp = temp + params[:phrase]
          counter += 1
        end
      temp
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
      "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}." #doh, period
  end

  get '/:operation/:number1/:number2' do
      if params[:operation] == "add"
        @answer = params[:number1].to_i + params[:number2].to_i
        "#{@answer.to_s}"
      elsif params[:operation] == "subtract"
        @answer = params[:number1].to_i - params[:number2].to_i
        "#{@answer.to_s}"
      elsif params[:operation] == "multiply"
        @answer = params[:number1].to_i * params[:number2].to_i
        "#{@answer.to_s}"
      elsif params[:operation] == "divide"
        @answer = params[:number1].to_i / params[:number2].to_i
        "#{@answer.to_s}"
      end
  end
end
