require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:number' do
    @num = params[:number].to_i ** 2
    "#{@num.to_s}"
  end

  get '/say/:number/:phrase' do
    final_string = ""
    (params[:number].to_i).times do
      final_string += "#{params[:phrase]}\n"
    end
    final_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{ params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @math = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i

    if @math == "add"
      @tot = @number1 + @number2
      "#{@tot}"
    elsif @math == "subtract"
      @tot = @number2 - @number1
      "#{@tot}"
    elsif @math == "multiply"
      @tot = @number1 * @number2
      "#{@tot}"
    else
      @tot = @number1 / @number2
      "#{@tot}"
    end
  end

end #ends Class app
