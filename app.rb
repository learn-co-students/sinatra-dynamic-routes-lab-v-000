require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
    get '/reversename/:name' do
      @name = params[:name].reverse
      "#{@name}"
    end

    get '/square/:number' do
      @square = params[:number].to_i
      "#{@square} * #{@square} = #{@square * @square}.to_s"
      # "#{Math.sqrt(@square).to_s}"
    end

    get '/say/:number/:phrase' do
      answer = ""
        params[:number].to_i.times do
          answer  << params[:phrase]
        end
        answer
      end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
      "#{word1} #{word2} #{word3} #{word4} #{word5}."
    end

    get '/:operation/:number1/:number2' do
      "Hello World"
    end

end
