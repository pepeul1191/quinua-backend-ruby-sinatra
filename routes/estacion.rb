class MyApp < Sinatra::Base
		get '/estacion/listar' do
				rs = Estacion.select(:ide_estacion, :latitud, :longitud)
				rpta = []
				for r in rs
						temp = {:id => r[:ide_estacion], :latitud => r[:latitud].to_f, :longitud => r[:longitud].to_f}
						rpta.push(temp)
				end
				rpta.to_json
		end
end