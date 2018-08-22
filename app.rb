require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @reversed = params[:name].reverse
    "#{@reversed}"
  end

  get '/square/:number' do
    @squared = params[:number].to_i * params[:number].to_i
    "#{@squared}"

    # (params[:number].to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
    @what = params[:phrase] * params[:number].to_i
    "#{@what}"
    # answer = ''

    # params[:number].to_i.times do
    #   answer += params[:phrase]
    # end
    # answer
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @string = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    # @string = ""
    # params.each.with_index(1) do |word, i|
    #   @string += params[:wordi] + " "
    # end
    # @string + "."   <---can only get concatenate test to pass, not others?
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    answer = "" #doesn't have to be an instance variable, works either way.

    case params[:operation]
    when 'add'
      answer = (@number1 + @number2).to_s
    when 'subtract'
      answer = (@number1 - @number2).to_s
    when 'multiply'
      answer = (@number1 * @number2).to_s
    when 'divide'
      answer = (@number1 / @number2).to_s
    end
  end

end

#old answer:
# operation = params[:operation]
# number1 = params[:number1].to_i
# number2 = params[:number2].to_i
#
# if operation == 'add'
#   answer = number1 + number2
# elsif operation == 'subtract'
#   answer = number1 - number2
# elsif operation == 'multiply'
#   answer = number1 * number2
# elsif operation == 'divide'
#   answer = number1 / number2
# else
#   answer = "Unable to perform this operation"
# end
# answer.to_s
# end
