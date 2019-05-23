require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end

  get '/square/:number' do
   "#{params[:number].to_i * params[:number].to_i}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    "#{@phrase}\n" * @number
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/:operation/:num1/:num2" do
    @operation = params[:operation]
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i

    case @operation
    when 'add'
      "#{@num1 + @num2}"
    when 'multiply'
      "#{@num1 * @num2}"
    when 'subtract'
      "#{@num1 - @num2}"
    when 'divide'
      "#{@num1 / @num2}"
    end
  end

end
