require_relative 'config/environment'
#we need all the return values to be a string su that the expected status code is not overwritten
#anything that is a string is assumed to be the response
#anything that is an integer is assumed to be a HTTP status code
class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @answer = @num ** 2
    @answer.to_s
  end

  get '/say/:number/:phrase' do
      #{}"#{params[:phrase]}" * params[:number].to_i
      #initialize as an empty string
      answer = " "
      params[:number].to_i.times do
        #increment the string
        answer += params[:phrase]
      end
      answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end



  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @n1 = params[:number1]
    @n2 = params[:number2]
      case @operation
      when "add"
        "#{@n1.to_i + @n2.to_i}"
      when "subtract"
        "#{@n1.to_i - @n2.to_i}"
      when "divide"
        "#{@n1.to_i / @n2.to_i}"
      when "multiply"
        "#{@n1.to_i * @n2.to_i}"
      end
  end





end
