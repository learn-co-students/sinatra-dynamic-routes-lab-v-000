require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @backwards = params[:name].reverse
    "#{@backwards}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @squared = @num * @num
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    string = ""
    params[:number].to_i.times do
      string += "#{@phrase}\n"
    end
    string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @opperator = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    if @opperator == "add"
      answer = @num1 + @num2
    elsif @opperator == "subtract"
      answer = @num1 - @num2
    elsif @opperator == "multiply"
      answer = @num1 * @num2
    elsif @opperator == "divide"
      answer = @num1 / @num2
    end
    answer.to_s
  end

end
