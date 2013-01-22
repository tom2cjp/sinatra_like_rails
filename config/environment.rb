# -*- encoding : utf-8 -*-
require 'rubygems'
require 'active_record'

ActiveRecord::Base.establish_connection(YAML.load(File.read(File.expand_path('../config.yml', __FILE__)))['development'])

Dir["./app/**/*.rb"].sort.each { |file| require file }
Dir["../lib/*.rb"].sort.each { |file| require file }
