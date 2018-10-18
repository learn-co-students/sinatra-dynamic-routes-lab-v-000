require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse!}"
  end

  get '/square/:number' do
    @num = params[:number].to_i**2
    "#{@num}"
  end

  get '/say/:number/:phrase' do
    @number_of_times = params[:number].to_i
    @phrase = params[:phrase]
    @combined_phrase = ""

    @number_of_times.times do
      @combined_phrase += " #{@phrase}"
    end

    "#{@combined_phrase}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @all_words = []
    params.each {|key, word| @all_words << word}
    "#{@all_words.join(" ")}."
  end

  get '/:operation/:number1/:number2' do
  @operation = params[:operation]
  @number1 = params[:number1].to_i
  @number2 = params[:number2].to_i
   case @operation
  when "add"
    @num = @number1 + @number2
  when "subtract"
    @num = @number1 - @number2
  when "divide"
    @num = @number1 / @number2
  when "multiply"
    @num = @number1 * @number2
  end
  "#{@num}"
end


end
