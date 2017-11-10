class MyApp < Sinatra::Base
		get '/estacion/listar' do
				Estacion.select(:ide_estacion, :latitud, :longitud).to_json
		end

		get '/estacion/detalle/:id' do
				query = 'SELECT IE.nombre_estacion, II.ide_sensor, IE.descripcion, II.nombre_sensor, II.desc_instrumento, MTT.des_tipo FROM inve_estacion IE 
						INNER JOIN inve_estacion_instru IEI ON IE.ide_estacion = IEI.ide_estacion 
						INNER JOIN inve_instru II ON II.ide_sensor = IEI.ide_sensor 
						INNER JOIN mae_tablatipo_tipo MTT ON MTT.ide_tipo = II.fk_tipo_unidad_medida 
						WHERE IEI.ide_estacion = ' + params[:id]
				DB[query].all.to_json
		end
		
end