require_relative 'config/environment'

class App < Sinatra::Base

    get "/reversename/:name" do
      @name = params[:name]
      "#{@name.reverse}"
    end

    get "/square/:number" do
      @num = params[:number].to_i
      "#{@num*@num}"
    end

    get '/say/:number/:phrase' do
      @number, @phrase = params[:number].to_i, params[:phrase]
       answer = ''
      @number.times do
        answer += @phrase
      end
      answer
    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
      "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operator = params[:operation].to_s

    if @operator == 'add'
      answer = (@num1 + @num2).to_s
    elsif @operator == 'subtract'
      answer = (@num1 - @num2).to_s
    elsif @operator == 'multiply'
      answer = (@num1 * @num2).to_s
    elsif @operator == 'divide'
      answer = (@num1/@num2).to_s
    else
      answer = 'Unable to perform this operation'
    end
    answer
  end
end
