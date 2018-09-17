require 'sinatra'

get "/" do
  "Hello world!"
end

get "/secret" do
  "This is a secret!"
end

get "/reallysecret" do
  "This is really secret!"
end

get "/random_cat" do
  @cat_name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get "/cat-form" do
  p params
  @cat_name = params[:cat_name]
  erb(:named_cat)
end

post "/named_cat" do
  p params
  @cat_name = params[:cat_name]
  erb(:named_cat)
end
