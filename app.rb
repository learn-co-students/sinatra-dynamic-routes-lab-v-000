require 'pry'
require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    # binding.pry
    @name_reverse = @name.reverse
    @name_reverse
  end

  get '/square/:number' do
    @num = params[:number]
    @num_integer = @num.to_i
    @num_square = @num_integer * @num_integer
    @num_square.to_s
  end

  # get '/say/:number/:phrase' do
  #   @num = params[:number].to_i
  #   @phrase = params[:phrase]
  #   @num.times do
  #     @phrase
  #   end
  # end

  get '/say/:number/:phrase' do
    the_phrase = ""
      @num = params[:number].to_i
      @phrase = params[:phrase]
      @num.times do
        the_phrase +="#{@phrase}\n"
      end
    the_phrase
    end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    @operation = params[:operation]

    @solution = ""

    case @operation
    when 'add'
      @solution = (@num1 + @num2).to_s
    when 'subtract'
      @solution = (@num1 - @num2).to_s
    when 'multiply'
      @solution = (@num1 * @num2).to_s
    when 'divide'
      @solution = (@num1 / @num2).to_s
    end

      @solution
  end

end
