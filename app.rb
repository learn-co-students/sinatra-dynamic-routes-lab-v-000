require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    @name = @name.split("").reverse.join("")
    "#{@name}"
  end

  get '/square/:num' do
    @num = params[:num].to_i
    "#{@num*@num}"
  end

  get '/say/:number/:phrase' do
    output = ""
    (params[:number].to_i).times do
      output += "#{params[:phrase].to_s}\n"
    end
    output
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operator/:num1/:num2' do
    case params[:operator]
    when "add"
      output = params[:num1].to_i + params[:num2].to_i
    when "subtract"
      output = params[:num1].to_i - params[:num2].to_i
    when "multiply"
      output = params[:num1].to_i * params[:num2].to_i
    when "divide"
      output = params[:num1].to_i / params[:num2].to_i
    end
    output.to_s
  end

end
