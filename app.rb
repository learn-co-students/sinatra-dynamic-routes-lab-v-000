require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @backwards = params[:name].reverse
    "#{@backwards}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
    # (params[:number].to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
    @what_you_say = params[:phrase] * params[:number].to_i
    "#{@what_you_say}"
    # answer = ''

    # params[:number].to_i.times do
    #   answer += params[:phrase]
    # end
    # answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    # @allo = params[:word1].to_s + " " + params[:word2].to_s + " " + params[:word3].to_s + " " + params[:word4].to_s + " " + params[:word5].to_s + "."
    # "#{@allo}"
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."

  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    if operation == 'add'
      answer = number1 + number2
    elsif operation == 'subtract'
      answer = number1 - number2
    elsif operation == 'multiply'
      answer = number1 * number2
    elsif operation == 'divide'
      answer = number1 / number2
    else
      answer = "Unable to perform this operation"
    end
    answer.to_s
  end

end
