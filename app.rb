# -*- encoding : utf-8 -*-
require_relative 'config/environment.rb'
require 'sinatra'

set :root, File.dirname(__FILE__)
set :app_file, __FILE__
set :env, 'development'

get '/' do
  rec_count = Rec.count
  erb :'../app/views/recs', :locals => {:count => rec_count}
end
