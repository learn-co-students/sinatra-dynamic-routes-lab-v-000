require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @user_name = params[:name]
    "#{@user_name.reverse}"
  end

  get '/square/:number' do
  #   @user_number = params[:number].to_i * params[:number].to_i
  #   '#{@user_number}'
  # end
  #why did this break?


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

   num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    case params[:operation]
    when "add"
      answer = num1 + num2
    when "subtract"
      answer = num1 - num2
    when "multiply"
      answer = num1 * num2
    when "divide"
      answer = num1 / num2
    else
      "I can't do this operation"
    end
    answer.to_s
  end

end