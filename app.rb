require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  #renders the name backwards
     get "/reversename/:name" do
       @user_name = params[:name].reverse
       "Hello #{@user_name}!"
     end

   #renders the square of the number
     get "/square/:number" do
       @number = params[:number]
       "#{@number.to_i * @number.to_i}."
     end

   #repeats the phrase n times
     get "/say/:number/:phrase" do
       string = ""
       (params[:number].to_i).times do
         string += "#{params[:phrase]}\n"
       end
       string
     end


   #concatenates the words and adds a period
     get '/say/:word1/:word2/:word3/:word4/:word5' do
       "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
     end


   # => adds two numbers together
   # subtracts the second number from the first
   # multiplies two numbers together
   # divides the first number by the second number
     get '/:operation/:number1/:number2' do
         number1 = params[:number1].to_i
         number2 = params[:number2].to_i

         solution = ""

         case params[:operation]
         when 'add'
           solution = (number1 + number2).to_s
         when 'subtract'
           solution = (number1 - number2).to_s
         when 'multiply'
           solution = (number1 * number2).to_s
         when 'divide'
           solution = (number1 / number2).to_s
         end
       end
end
