require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @r_n = params[:name].reverse
    "#{@r_n}"
  end

  get '/square/:number' do
    @squared = params[:number].to_i * params[:number].to_i
    "#{@squared}"
  end

  get "/say/:number/:phrase" do
    @num = params[:number].to_i
    @str = params[:phrase].to_s 
   
    @arr = []
    @num.times do |i|
      @arr << @str
    end
    @arr.join(" ")
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]

    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
   @op = params[:operation]
   @num1 = params[:number1].to_i
   @num2 = params[:number2].to_i
   
    case @op
      when "add"
       @total = @num1 + @num2
      when "subtract"
        @total = @num1 - @num2
      when "multiply"
        @total = @num1 * @num2
      else #"divide"
        @total = @num1 / @num2
     end
     "#{@total}"
  end  
end


