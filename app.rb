require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do 
    @name = params[:name]
    @name.reverse
  end

  get '/square/:number' do 
    @number = params[:number].to_i
    (@number ** 2).to_s
  end

  get '/say/:number/:phrase' do 
    @number = params[:number].to_i
    @phrase = params[:phrase].gsub('%20', ' ')
    @return_phrase = String.new
    if (@number - 1) > 0
      (@number - 1).times do
        @return_phrase += @phrase + "\n"
      end
    end
    if @number > 0
      @return_phrase += @phrase
    end
    @return_phrase
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    # We could capitalize the first word of the sentence by writing `params[:word1].capitalize`
    # instead of `params[:word1]`, but the specs don't call for it so I will leave it out for now.
    params[:word1] + ' ' + params[:word2] + ' ' + params[:word3] + ' ' + params[:word4] + ' ' + params[:word5] + '.'
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    case @operation
    when "add"
      (@number1 + @number2).to_s
    when "multiply"
      (@number1 * @number2).to_s
    when "subtract"
      (@number1 - @number2).to_s
    when "divide"
      (@number1 / @number2).to_s
    end
  end
end