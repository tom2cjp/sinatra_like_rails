# -*- encoding : utf-8 -*-
require 'rubygems'
require 'sinatra'
require 'active_record'

set :root, File.dirname(__FILE__)
set :app_file, __FILE__
set :env, 'development'

ActiveRecord::Base.establish_connection(YAML.load(File.read(File.join(settings.root, 'config/config.yml')))[settings.env])

class Rec < ActiveRecord::Base
end
