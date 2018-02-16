require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do

  end

  get '/square/:number' do

  end

  get '/say/:number/:phrase'

  end

  get '/say/:word1/:word2/:word3/:word4/:word5'

  end

  get '/:operation/:number1/:number2'
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
