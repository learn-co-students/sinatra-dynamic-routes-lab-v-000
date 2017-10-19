require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i ** 2}.to_s"
  end

  get '/say/:number/:phrase' do
    result = ''

    params[:number].to_i.times do
      result += params[:phrase]
    end

    result
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    params.each_value.map { |value| value }.join(" ") << "."
  end

  get '/:operation/:number1/:number2' do
    @arr = [params[:number1].to_i, params[:number2].to_i]
    @op = params[:operation]

    case @op
      when "add"
        @result = @arr.reduce(:+)
      when "subtract"
        @result = @arr.reduce(:-)
      when "multiply"
        @result = @arr.reduce(:*)
      when "divide"
        @result = @arr.reduce(:/)
    end

    "#{@result}"
  end
end
