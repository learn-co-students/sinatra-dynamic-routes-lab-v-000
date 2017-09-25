require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]

    @reverse_name = @name.reverse!

    "#{@reverse_name}"
  end

  get '/square/:number' do
    @number = params[:number]

    @square_number = @number.to_i ** 2

    "#{@square_number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number]
    @phrase = params[:phrase]

    @repetition = @number.to_i

    @phrase_array = Array.new(@repetition, @phrase)

    "#{@phrase_array}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word_1 = params[:word1]
    @word_2 = params[:word2]
    @word_3 = params[:word3]
    @word_4 = params[:word4]
    @word_5 = params[:word5]

    "#{@word_1} #{@word_2} #{@word_3} #{@word_4} #{@word_5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num_1 = params[:number1]
    @num_2 = params[:number2]

    @int_1 = @num_1.to_i
    @int_2 = @num_2.to_i

    case @operation
    when 'add'
      @total = @int_1 + @int_2
      "#{@total}"
    when 'subtract'
      @total = @int_1 - @int_2
      "#{@total}"
    when 'multiply'
      @total = @int_1 * @int_2
      "#{@total}"
    when 'divide'
      @total = @int_1 / @int_2
      "#{@total}"
    end
  end

end
