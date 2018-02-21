require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    @square.to_s
  end

  get '/say/:number/:phrase' do
    @repetitions = params[:number].to_i
    @phrase = params[:phrase]
    foo = ""
    @repetitions.times do
      foo += @phrase
    end
    foo
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1]
    @num2 = params[:number2]
    @operator = if params[:operation] == "add"
                  "+"
                elsif params[:operation] == "subtract"
                  "-"
                elsif params[:operation] == "multiply"
                  "*"
                else
                  "/"
                end
    eval("#{@num1} #{@operator} #{@num2}").to_s
  end

end
