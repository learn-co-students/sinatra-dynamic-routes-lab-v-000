require_relative 'config/environment'
require 'pry'
class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name].reverse
    "#{@name}"
  end

  get '/square/:num' do
    @sqr = params[:num].to_i * params[:num].to_i
    "#{@sqr}"
  end

  get '/say/:number/:phrase' do
    @phrase = params[:phrase]
    @sentence = []
    params[:number].to_i.times do
      @sentence << @phrase
    end
    "#{@sentence.join(" ")}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @ret = params.values.join(" ")
    "#{@ret}."
  end

  get '/:operation/:number1/:number2' do
    case params[:operation]
    when "add"
      @res = params[:number1].to_i + params[:number2].to_i
      "#{@res}"
    when "subtract"
      @res = params[:number1].to_i - params[:number2].to_i
      "#{@res}"
    when "multiply"
      @res = params[:number1].to_i * params[:number2].to_i
      "#{@res}"
    when "divide"
      @res = params[:number1].to_i / params[:number2].to_i
      "#{@res}"
    end
  end
end
