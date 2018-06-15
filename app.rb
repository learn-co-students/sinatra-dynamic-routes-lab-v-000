require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
   "#{params[:name].reverse}"
  end

  get '/square/:number' do
    "#{params[:number].to_i ** 2}"
  end

  get '/say/:number/:phrase' do
    @phrases = []
    params[:number].to_i.times do |x|
       @phrases << params[:phrase]
    end
    "#{@phrases.join(" ")}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
  @sentence = params.values.join(" ")
   "#{@sentence}."
  end

  get '/:operation/:number1/:number2' do
    @operator = ""
    case params[:operation]
    when "add"
      @operator = "+"
    when "subtract"
      @operator = "-"
    when "multiply"
      @operator = "*"
    when "divide"
      @operator = "/"
    end

    @solution = params[:number1].to_i.send(@operator, params[:number2].to_i)
    "#{@solution}"
  end




end
