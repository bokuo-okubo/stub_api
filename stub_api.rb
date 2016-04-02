 #encoding: utf-8
require 'sinatra'
require 'sinatra/json'

get '/' do
  welcome_message
end

get '/welcome/:name' do
  welcome_message params["name"]
end

get '/json' do
  json :foo => 'bar'
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
