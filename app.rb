require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse!
  end

get '/say/:number/:phrase' do
  @phrase = params[:phrase]
  @number = params[:number].to_i
  Array.new(@number, @phrase)
end

get '/square/:number' do
  "the square is #{params[:number].to_i ** 2}"
end

get '/say/:word1/:word2/:word3/:word4/:word5' do
  "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
end

get '/:operation/:n1/:n2' do
  @op = params[:operation]
  @first = params[:n1].to_i
  @second = params[:n2].to_i
  case
  when @op == "add"
    @final = @first + @second
  when @op == "subtract"
    @final = @first - @second
  when @op == "multiply"
    @final = @first * @second
  when @op == "divide"
    @final = @first / @second

  end
  "#{@final}"
end
end
