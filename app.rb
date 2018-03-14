require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end
get '/square/:number' do
  @number= params[:number].to_i
  "#{@number ** 2}"
end
get '/say/:number/:phrase' do
  @number= params[:number].to_i
  #binding.pry
  #i=0
  #until i= @number
  string= ""
  @number.times do
    string += params[:phrase]
  # i+=1
  end
  string
end
get '/say/:word1/:word2/:word3/:word4/:word5' do
  # @word1= params[:word1]
  # @word2= params[:word2]
  # @word3= params[:word3]
  # @word4= params[:word4]
  # @word5= params[:word5]

  "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}.}"
end
get '/:operation/:number1/:number2' do
  #binding.pry
    if params[:operation] == "add"
      result= params[:number1].to_i + params[:number2].to_i
    elsif params[:operation] == "subtract"
      result= params[:number1].to_i - params[:number2].to_i
    elsif params[:operation] == "multiply"
      result= params[:number1].to_i * params[:number2].to_i
    else
      result= params[:number1].to_i/params[:number2].to_i
    end
  #  binding.pry
    result.to_s
end
end
