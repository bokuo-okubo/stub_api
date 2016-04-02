 #encoding: utf-8
require 'sinatra'
require 'json'


get '/' do
  welcome_message
end

get '/welcome/:name' do
  welcome_message params["name"]
end

get '/json' do
  header_template
  data = {foo: 'bar'}
  data.to_json
end

def welcome_message(name = nil)
  template = "this is stub_api application."
  name ? template + "<br> Hello!! #{name}!!" : template
end

def header_template
  content_type :json
end

# CATEGORY API
get '/category' do
  header_template
  category_model.to_json
end

def category_model
  {
    "header": {
      "status": "OK",
      "code": "000"
    },
    "payload": {
      "categoryID": 123456,
      "tableSequence": 0,
      "titleText": "GO TODAY",
      "iconImgUrl": "http://megaicons.net/static/img/icons_sizes/8/178/512/timewise-today-icon.png",
      "bgImgUrl": "http://satoshi19901.c.blog.so-net.ne.jp/_images/blog/_4c7/satoshi19901/5507741_4076568774.jpg?c=a0",
      "webViewUrl": nil,
    }
  }
end
