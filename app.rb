require_relative 'config/environment'

class App < Sinatra::Base

get "/reversename/:name" do
  @name = params[:name].reverse!
  "#{@name}"
end

  get "/square/:number" do
    @number = params[:number].to_i ** 2
    "#{@number}"
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @phrase= params[:phrase]
    "#{@phrase}" * @num
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @num_1 = params[:number1].to_i
    @num_2 = params[:number2].to_i
    case params[:operation].downcase
    when 'add' || '+'
      (@num_1 + @num_2).to_s
    when 'subtract' || '-'
      (@num_1 - @num_2).to_s
    when 'multiply' || '*'
      (@num_1 * @num_2).to_s
    when 'divide' || '/'
      (@num_1 / @num_2).to_s
    else
      "Error"
    end
  end




end
