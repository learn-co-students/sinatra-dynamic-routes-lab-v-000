require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
      @name = params[:name]
       "#{@name.reverse}"
  end

  get "/square/:number" do
      @number = params[:number].to_i
      @squared = @number * @number
      "#{@squared}"
  end

  get "/say/:number/:phrase" do
      @number = params[:number].to_i
      @phrase = params[:phrase].gsub("%20", " ")
      @phrases = []
        @number.times do
             @phrases << @phrase
        end
        # @p = @phrases.gsub(',"', ' ').flatten
        @p = @phrases
        "#{@p}"


  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
      "hello"
      @a = []
      params.each do |k,v|
         @a << v
      end
       @d = @a.join(' ')
       "#{@d.to_s}."

  end


  get "/:operation/:number1/:number2" do

      @number1 = params[:number1].to_i
      @number2 = params[:number2].to_i
      @operation = params[:operation]

      if @operation == "multiply"
           @total = @number1 * @number2
       elsif @operation == "add"
           @total = @number1 + @number2
       elsif @operation == "subtract"
           @total = @number1 - @number2
       elsif @operation == "divide"
           @total = @number1 / @number2
       end
        "#{@total}"
  end

end
