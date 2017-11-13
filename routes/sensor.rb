class MyApp < Sinatra::Base
		# demo sqlite : http://BASE_URL:3000/sensor/historico?sensor_id=1&fecha_inicio=2017-02-01&fecha_fin=2017-02-10
		# demo postgres : http://localhost:3000/sensor/historico?sensor_id=1&fecha_inicio=2017-01-01&fecha_fin=2017-08-10
		# sensor/datos?sensor_id=' + sensor_id + '&fecha_inicio=' + fecha_inicio + '&fecha_fin=' + fecha_fin
		get '/sensor/datos' do
				query = 'SELECT strftime("%d",  fec_med) as dia, strftime("%m",  fec_med) as mes, strftime("%Y",  fec_med) as anio, AVG(valor_med) AS medicion 
						FROM inve_instru_dato 
		    WHERE fec_med > strftime("' + params[:fecha_inicio] + '") AND fec_med < strftime("' + params[:fecha_fin] + '") AND ide_sensor = ' + params[:sensor_id] + '
		    GROUP BY dia;'
				DB[query].all.to_json
		end
		
end