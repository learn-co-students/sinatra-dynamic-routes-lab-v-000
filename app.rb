require_relative 'config/environment'

class App < Sinatra::Base

  # Routes
  get '/reversename/:name' do
  		params[:name].reverse
  end
  get '/square/:number' do
    @n = params[:number].to_i
    "#{@n ** 2}"
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "{#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end
  get '/say/:number/:phrase' do
    params[:phrase] * params[:number].to_i
  end
  get '/:operation/:number1/:number2'  do
    do_operation(params[:operation], params[:number1].to_i, params[:number2].to_i)
  end

  # helpers
  def do_operation (operation, n1, n2)
    case operation
    when "add"
      "#{n1 + n2}"
    when "subtract"
      "#{n1 - n2}"
    when "multiply"
      "#{n1 * n2}"
    when "divide"
      "#{n1 / n2}"
    else
      "unknown operation"
    end
  end
end
