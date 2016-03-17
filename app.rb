require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  get "/reversename/:name" do
    name_reverse
  end

  get "/square/:number" do
    (number * number).to_s
  end

  get "/say/:number/:phrase" do
    show_me_money_and_repeat(number)
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    concatenates_captures + '.'
  end

  get '/:operation/:number1/:number2' do
    number1_operation_number2
  end

  private
  def name_reverse
    name.reverse
  end

  def name
    @name ||= params[:name]
  end

  def number
    @number ||= params[:number].to_i
  end

  def number1_operation_number2
    (number1 operation number2).to_s
  end

  def operation
    @operation ||= params[:operation]
  end

  def number1
    @number1 ||= params[:number1].to_i
  end

  def number2
    @number2 ||= params[:number2].to_i
  end

  def phrase
    @phrase ||= params[:phrase]
  end

  def show_me_money_and_repeat(number)
    show_me_money * number
  end

  def show_me_money
    "show me the money\n"
  end

  def concatenates_captures
    params['captures'].join(' ')
  end
end
