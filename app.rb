require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
      "#{params[:name].reverse}"
    end

    get '/square/:number' do
      @number = params[:number].to_i
      "#{@number*@number}"
    end

    get '/say/:number/:phrase' do
      @number = params[:number].to_i
      @phrase = params[:phrase]
      @return = []
      @number.times do
        @return << @phrase
      end
      @return.join
    end

    get '/say/:word1/:word2/:word3/:word4/:word5' do
      @return = []
      params.each do |key, value|
        @return << value
      end
      "#{@return.join(' ')}."
    end

    get '/:operation/:number1/:number2' do
      @opp = params[:operation]
      @n1 = params[:number1].to_i
      @n2 = params[:number2].to_i
      if @opp == 'add'
        "#{@n1 + @n2}"
      elsif @opp == 'subtract'
        "#{@n1 - @n2}"
      elsif @opp == 'multiply'
        "#{@n1 * @n2}"
      elsif @opp == 'divide'
        "#{@n1 / @n2}"
      end
    end
end
