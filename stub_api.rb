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
    statusCode: "000",
    message: "OK",
    data:
    [
      {
        categoryID: 123456,
        tableSequence: 0,
        titleText: "GO TODAY",
        iconImgUrl: "http://megaicons.net/static/img/icons_sizes/8/178/512/timewise-today-icon.png",
        bgImgUrl: "http://hajimari2016.jp/wp/wp-content/uploads/2015/09/halloween_800x5001.jpg"
      },
      {
        categoryID: 654321,
        tableSequence: 1,
        titleText: "THIS WEEKEND",
        iconImgUrl: "http://megaicons.net/static/img/icons_sizes/8/178/512/timewise-today-icon.png",
        bgImgUrl: "http://satoshi19901.c.blog.so-"
      },
      {
        categoryID: 654321,
        tableSequence: 1,
        titleText: "百年後の未来",
        iconImgUrl: "http://megaicons.net/static/img/icons_sizes/8/178/512/timewise-today-icon.png",
        bgImgUrl: "http://satoshi19901.c.blog.so-"
      }
    ]
  }
end
