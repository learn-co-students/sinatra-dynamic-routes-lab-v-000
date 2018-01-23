require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
    # @name_reversed = params[:name].reverse
    # "#{@name_reversed}"
  end

  get '/square/:number' do
    (params[:number].to_i ** 2).to_s
    # @number = params[:number].to_i
    # "#{@number**2}"
  end

  get '/say/:number/:phrase' do
    answer = ''

    params[:number].to_i.times do
      answer += params[:phrase]
    end

    answer
    # @number = params[:number].to_i
    # @phrase = params[:phrase]
    # @phrase*@number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    #that accepts five words and returns a string with them formatted as a sentence.
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."

    # @word1 = params[:word1]
    # @word2 = params[:word2]
    # @word3 = params[:word3]
    # @word4 = params[:word4]
    # @word5 = params[:word5]
    # "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i

    answer = 'Unable to perform this operation'

    case params[:operation]
    when 'add'
      answer = (number1 + number2).to_s
    when 'subtract'
      answer = (number1 - number2).to_s
    when 'multiply'
      answer = (number1 * number2).to_s
    when 'divide'
      answer = (number1 / number2).to_s
    end

    # @operation = params[:operation]
    # @number1 = params[:number1].to_i
    # @number2 = params[:number2].to_i
    # case @operation
    # when "add"
    #   "#{@number1+@number2}"
    # when "subtract"
    #   "#{@number1-@number2}"
    # when "multiply"
    #   "#{@number1*@number2}"
    # when "divide"
    #   "#{@number1/@number2}"
    # end
  end
end
