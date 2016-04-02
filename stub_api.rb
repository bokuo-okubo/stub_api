 #encoding: utf-8
require 'pry'
require 'pry-byebug'
require 'sinatra'
require 'json'
require 'active_support/dependencies'
ActiveSupport::Dependencies.autoload_paths << './src/'


get '/' do
  welcome_message
end

get '/welcome/:name' do
  welcome_message params["name"]
end

def welcome_message(name = nil)
  template = "this is stub_api application."
  name ? template + "<br> Hello!! #{name}!!" : template
end


get '/category' do
body = <<EOF
{
  "header": {
    "status": "OK",
    "code": "000"
  },
  "payload": {
    "categoryID": 123456,
    "tableSequence": 0,
    "titleText": "GO TODAY",
    "iconImgUrl": "....png",
    "bgImgUrl": "...png",
    "webViewUrl": null,
  }
}
EOF
body
end
