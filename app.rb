require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @product = params[:number].to_i * params[:number].to_i
    "#{@product.to_s}"
  end

  get '/say/:number/:phrase' do
    @text_print = []
    params[:number].to_i.times do
    @text_print  << "#{params[:phrase]}\n"
    end
    @text_print
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    if params[:operation] == "add"
      @result = params[:number1].to_i + params[:number2].to_i
    elsif params[:operation] == "subtract"
      @result = params[:number1].to_i - params[:number2].to_i
    elsif params[:operation] == "multiply"
      @result = params[:number1].to_i * params[:number2].to_i
    elsif params[:operation] == "divide"
      @result = params[:number1].to_i / params[:number2].to_i
    end
    "#{@result}"
  end

end
