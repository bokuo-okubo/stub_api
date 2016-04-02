require 'bundler'
Bundler.require

require './stub_api'
Encoding.default_external = 'utf-8'
run Sinatra::Application
