require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get "/reversename/:name" do
     (params[:name]).reverse
  end

  get "/square/:number" do
    ((params[:number]).to_i** 2).to_s
  end

  get "/say/:number/:phrase" do

    s = " "
    ph =params[:phrase]
    (params[:number]).to_i.times do |i|
      print ph
       s << ph
    end
    s
  end

  # get '/say/:word1/:word2/:word3/:word4/:word5' do
  #     params[:word]
  # end


end
