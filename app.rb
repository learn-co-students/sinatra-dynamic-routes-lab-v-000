require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @revname = params[:name]
    @revname.reverse
  end

  get '/square/:number' do
    @numb = params[:number].to_i
    @square = @numb * @numb
    @square.to_s
  end

  get '/say/:number/:phrase' do
    final_string = ""
    (params[:number].to_i).times do
      final_string += "#{params[:phrase]}\n"
    end
    final_string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @sentencearr = [params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]]
    @sentence = @sentencearr.join(' ') << '.'
    @sentence
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i

    @it = @num1.send(@operation, @num2)
    @it
  end
end
