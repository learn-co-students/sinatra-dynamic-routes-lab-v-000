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
  @number= params[:number]
  binding.pry
  i=0
  until i= @number
    "#{params[:phrase]}"
    i+=1
  end
end
get '/say/:word1/:word2/:word3/:word4/:word5' do
  # @word1= params[:word1]
  # @word2= params[:word2]
  # @word3= params[:word3]
  # @word4= params[:word4]
  # @word5= params[:word5]

  "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}}"
end
get '/:operation/:number1/:number2' do
  result= params[:number1].to_i + params[:operation] + params[:number2].to_i
  "#{result}"

end
end
