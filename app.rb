require 'rubygems'
require 'sinatra'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter  => "mysql2",  
  :host     => "localhost",  
  :username => "root",  
  :password => "db_pwd",  
  :database => "ghost"  
)

class Rec < ActiveRecord::Base
end
