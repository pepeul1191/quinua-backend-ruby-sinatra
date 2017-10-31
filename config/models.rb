require_relative './database'

class Usuario < Sequel::Model(DB[:usuario])
  	
end