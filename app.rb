# app.rb
require 'compass'
require 'sinatra'
require 'haml'
require 'sass'
require 'maruku'
require 'coffee-script'

configure do
  Compass.add_project_configuration(File.join(Sinatra::Application.root, 'config', 'compass.rb'))
end

get '/' do
  haml :index
end

get '/stylesheets/:name.css' do
  content_type 'text/css', :charset => 'utf-8'
  sass(:"stylesheets/#{params[:name]}", Compass.sass_engine_options)
end

get '/javascripts/:name.js' do
  content_type 'text/javascript'
  coffee :"/javascripts/#{params[:name]}"
end