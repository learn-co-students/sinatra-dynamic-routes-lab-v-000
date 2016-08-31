require_relative 'config/environment'

class App < Sinatra::Base
  get "/reversename/:name" do
    @user_name = params[:name].reverse
    "#{@user_name}"
  end

  get "/square/:number" do
    @user_number = params[:number].to_i ** 2
    "#{@user_number.to_s}"
  end

  get "/say/:number/:phrase" do
    @user_number = params[:number].to_i
    @user_phrase = params[:phrase]
    @output_string = ""
    @user_number.times do
      @output_string += "#{@user_phrase}\n"
    end
    "#{@output_string.chomp("\n")}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    @user_word1 = params[:word1]
    @user_word2 = params[:word2]
    @user_word3 = params[:word3]
    @user_word4 = params[:word4]
    @user_word5 = params[:word5]
    "#{@user_word1} #{@user_word2} #{@user_word3} #{@user_word4} #{@user_word5}."
  end

  get "/:operation/:number1/:number2" do
    @user_operation = params[:operation]
    @user_number1 = params[:number1].to_i
    @user_number2 = params[:number2].to_i
    case @user_operation
      when "add"
          @user_number3 = @user_number1 + @user_number2
      when "subtract"
        @user_number3 = @user_number1 - @user_number2
      when "multiply"
          @user_number3 = @user_number1 * @user_number2
      when "divide"
        @user_number3 = @user_number1 / @user_number2
    end
    "#{@user_number3.to_s}"
  end

end
