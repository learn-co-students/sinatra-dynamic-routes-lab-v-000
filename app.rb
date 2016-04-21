require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reversename = params[:name].reverse
    "#{@reversename}"
  end

  get '/square/:number' do
    @square = params[:number].to_i ** 2
    "#{@square.to_s}"
  end

  get '/say/:number/:phrase' do
    "#{params[:number].to_i.times.map {params[:phrase]}.join("\n")}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    case params[:operation]
    when /add/
      "#{@num1 + @num2}"
    when /subtract/
      "#{@num2 - @num1}"
    when /multiply/
      "#{@num1 * @num2}"
    when /divide/
      "#{@num1 / @num2}"
    else
      "Any other ideas?"
    end
  end
end
