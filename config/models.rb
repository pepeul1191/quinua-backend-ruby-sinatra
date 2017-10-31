require_relative './database'

class Usuario < Sequel::Model(DB[:usuario])
  	
end

class Estacion < Sequel::Model(DB[:inve_estacion])
  	
end