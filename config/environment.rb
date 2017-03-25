ENV['SINATRA_ENV'] ||= "development"

require 'bundler/setup'
require "cgi"
Bundler.require(:default, ENV['SINATRA_ENV'])

require './app'
