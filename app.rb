require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reversed = params[:name].reverse!
    "#{@reversed}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  # get '/say/:number/:phrase' do
  #   answer = ''
  #   @number = params[:number].to_i
  #   @phrase = params[:phrase]
  #   i = 0
  #   while i < @number
  #   answer += @phrase
  #   i++
  #   end
  #   answer
  # end

  get '/say/:number/:phrase' do
    answer = ''

    params[:number].to_i.times do
      answer += params[:phrase]
    end

    answer
  end



  get '/say/:word1/:word2/:word3/:word4/:word5' do
  @string = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]].join(' ')
  "#{@string}."
  end
#
get '/:operation/:number1/:number2' do
  @operation = params[:operation]
  @number1 = params[:number1]
  @number2 = params[:number2]

  if @operation == 'add'
    @answer = @number1.to_i + @number2.to_i
  elsif @operation == 'subtract'
      @answer = @number1.to_i - @number2.to_i
    elsif @operation == 'multiply'
        @answer = @number1.to_i * @number2.to_i
      else
        @answer = @number1.to_i / @number2.to_i
  end
  "#{@answer}"
end

end
