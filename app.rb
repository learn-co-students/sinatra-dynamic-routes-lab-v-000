require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    reversed = @name.reverse
    "#{reversed}"
  end

  get '/square/:number' do
    @number = params[:number].to_i
      @number *= @number
      "#{@number}"
  end

  get '/say/:number/:phrase' do
    str = ""
    params[:number].to_i.times do
      str += "#{params[:phrase]}\n"
    end
    str

  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1]
    @number2 = params[:number2]
    answer = ""
    if @operation ==  "+"
      answer = @number1 + @number2

    elsif @operation == "-"
      answer = @number1 - @number2
    elsif @operation == "*"
      answer = @number1 * @number2
    else
      answer = @number1/@number2
    end
      "#{answer.to_s}"
  end
end
