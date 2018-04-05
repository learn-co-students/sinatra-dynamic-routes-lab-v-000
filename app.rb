require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @number_sq = params[:number].to_i
    "#{@number_sq * @number_sq}"
  end

  get '/say/:number/:phrase' do
    @number_phr = params[:number].to_i
    @phrase = params[:phrase]
    @phrases = ""
    @number_phr.times {|i| @phrases += @phrase}
    "#{@phrases}"
    #"#{@number_phr.times {|i| puts @phrase}}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if params[:operation] == "add"
      "#{@number1 + @number2}"
    elsif params[:operation] == "subtract"
      "#{@number1 - @number2}"
    elsif params[:operation] == "multiply"
      "#{@number1 * @number2}"
    elsif params[:operation] == "divide"
      "#{@number1 / @number2}"
    end
  end
end
