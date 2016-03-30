require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name].reverse
    "Hello #{@name.reverse.capitalize}, here is your name backwards: #{@name}."
  end

  get '/square/:number' do
    @number = params[:number].to_i * params[:number].to_i
    "#{@number}"
  end

  get '/say/:number/:phrase' do
    @x = params[:number].to_i
    "#{params[:phrase]}\n" * @x
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operator = params[:operation].to_s
    @op_sym = ""
    @result = 0

    case @operator
      when "add"
        @op_sym = "+"
      when "subtract"
        @op_sym = "-"
      when "multiply"
        @op_sym = "*"
      when "divide"
        @op_sym = "/"
    end
    @result = eval "#{@num1} #{@op_sym} #{@num2}"
    @result.to_s
  end
end