require_relative 'config/environment'

class App < Sinatra::Base

  # get "/" do
  # end

  get '/reversename/:name' do

    @rname = params[:name].to_s.reverse!
    # rname = @name.reverse!
    "#{@rname}"
  end

  get '/square/:number' do
    @num = params[:number].to_i
    @sq = (@num ** 2).to_s #[] also works
    "#{@sq}"
  end

  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phr = params[:phrase]  #.to_s
    # @output = @phr * @num
    "#{@phr}\n" * @num  # '\n' allows a space btw @phr
    # "#{@output}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @w1 = params[:word1]
    @w2 = params[:word2]
    @w3 = params[:word3]
    @w4 = params[:word4]
    @w5 = params[:word5]

    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if @operation == "add"
      "#{number1} + #{number2}"
    elsif @operation == "subtract"
      # @operation = -
      "#{number1} - #{number2}"
    elsif @operation == "multiply"
      # @operation = *
      "#{number1} * #{number2}"
    else
      # @operation = /
      "#{number1} / #{number2}"
    end
    # @result = @number1 @peration @number2
  end
    # "#{@result}"

end
