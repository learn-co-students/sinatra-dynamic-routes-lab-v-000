require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reversed = params[:name].reverse
    "#{@reversed}"
  end

  get '/square/:number' do
    @squared = params[:number].to_i * params[:number].to_i
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    message = ""
    params[:number].to_i.times do
      message += "#{params[:phrase]}\n"
    end
    message
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @operation = @params[:operation]
    @number1 = @params[:number1].to_i
    @number2 = @params[:number2].to_i
    if @operation == "add"
      @solution = @number1 + @number2
    elsif @operation == "subtract"
      @solution = @number1 - @number2
    elsif @operation == "multiply"
      @solution = @number1 * @number2
    elsif @operation == "divide"
      @solution = @number1 / @number2
    else
      @solution = "Please enter a proper mathematical operation (add, subtract, multiply, or divide)."
    end
    @solution.to_s
  end

end