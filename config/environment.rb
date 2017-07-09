ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
require 'pry'
Bundler.require(:default, ENV['SINATRA_ENV'])

require './app'
