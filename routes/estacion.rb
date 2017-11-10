class MyApp < Sinatra::Base
		get '/estacion/listar' do
				Estacion.select(:ide_estacion, :latitud, :longitud).to_json
		end
end