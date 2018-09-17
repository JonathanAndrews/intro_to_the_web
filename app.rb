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

get "/cat" do
  %q{
    <head>
    <link rel="stylesheet" type="text/css" href="/style.css">
    </head>
    <img src="http://bit.ly/1eze8aE" class="imageborder" />

  }

end
