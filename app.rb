require_relative 'config/environment'

class App < Sinatra::Base
    # This is a sample dynamic route.
    # get "/hello/:name" do
    #   @user_name = params[:name]
    #   "Hello #{@user_name}!"
    # end

    get "/reversename/:name" do
      @name = params[:name]
      "#{@name.reverse}"
    end

    get "/square/:number" do
      @num = params[:number]
      "#{@num.to_i * @num.to_i}"
    end

    get '/say/:number/:phrase' do
      @num = params[:number]
      @phrase = params[:phrase]
      i = 1
      arr = []
      while i <= @num.to_i
        arr << @phrase.gsub('%20', ' ')
        i += 1
      end
      arr.each {|w|
        "#{w}"
      }

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
      @num1 = params[:number1]
      @num2 = params[:number2]
      case @op
        when "add"
          "#{@num1.to_i + @num2.to_i}"
        when "subtract"
          "#{@num2.to_i - @num1.to_i}"
        when "multiply"
          "#{@num1.to_i * @num2.to_i}"
        when "divide"
          "#{@num1.to_i / @num2.to_i}"
        end
    end


end