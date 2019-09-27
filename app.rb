require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
    #params[:name].reverse
  end

  get '/square/:number' do
    @number = params[:number].to_i
    "#{@number ** 2}"
    #(params[:number].to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase * @number}"
     #answer = ''
     #params[:number].to_i.times do
     #answer += params[:phrase]
     #end
     #answer
     #end
  end


  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
    ##{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}.
  end

  get "/:operation/:number1/:number2" do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    case @operation
    when "add" then "#{@number1 + @number2}"
    when "subtract" then "#{@number2 - @number1}"
    when "multiply" then "#{@number1 * @number2}"
    when "divide" then "#{@number1 / @number2}"
    end
  end
    # number1 = params[:number1].to_i
    # number2 = params[:number2].to_i
    #
    # answer = 'Unable to perform this operation'
    #
    # case params[:operation]
    # when 'add'
    #   answer = (number1 + number2).to_s
    # when 'subtract'
    #   answer = (number1 - number2).to_s
    # when 'multiply'
    #   answer = (number1 * number2).to_s
    # when 'divide'
    #   answer = (number1 / number2).to_s

end
