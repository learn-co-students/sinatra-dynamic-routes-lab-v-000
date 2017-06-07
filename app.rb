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



  get "/say/:number/:phrase" do
    @number = params[:number].to_i
    @phrase = params[:phrase] + "\n"
    content = ""
      @number.times do
      content += "#{@phrase}"
    end
  content
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:num1/:num2' do
 	@operation = params[:operation].to_s
 	@num1 = params[:num1].to_i
 	@num2 = params[:num2].to_i
  case @operation
    when  condition
      "add"
 	     @num1 + @num2
     when condition
        "subtract"
 	     @num1 - @num2
     when condition
        "multiply"
 	     @num1 * @num2
     when "divide"
 	     @num1 / @num2
 	  end
 end


end
