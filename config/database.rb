require 'sequel'
require 'sqlite3'

Sequel::Model.plugin :json_serializer

#DB = Sequel.connect('postgres://postgres:ulima@172.16.28.184:5432/quinua')
DB = Sequel.connect('sqlite://db/db_quinua.db')