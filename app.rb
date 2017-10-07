require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @reversename = params[:name].reverse
    "#{@reversename}"
  end

  get '/square/:number' do
    @total = params[:number].to_i * params[:number].to_i
    "#{@total}"
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    @phrases = num.times.collect {|i|"#{params[:phrase]}"}.join(" ")
    "#{@phrases}"
  end


  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    operation = params[:operation]
    if operation == "add"
      @total = params[:number1].to_i + params[:number2].to_i
    elsif operation == "subtract"
      @total = params[:number1].to_i - params[:number2].to_i
    elsif operation == "multiply"
      @total = params[:number1].to_i * params[:number2].to_i
    elsif operation == "divide"
      @total = params[:number1].to_i / params[:number2].to_i
    end
    
    "#{@total}"
  end

end
