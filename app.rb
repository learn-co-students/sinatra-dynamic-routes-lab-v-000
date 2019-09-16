require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @number = params[:number].to_i ** 2
    "#{@number}"
  end

  get '/say/:number/:phrase' do
    @string = ''
    params[:number].to_i.times do
      @string += params[:phrase]
    end
    @string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @string = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    "#{@string}."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    case params[:operation]
    when 'add'
      @operation = (@number1 + @number2).to_s
    when 'subtract'
      @operation = (@number1 - @number2).to_s
    when 'multiply'
      @operation = (@number1 * @number2).to_s
    when 'divide'
      @operation = (@number1 / @number2).to_s
    end
  end
end
