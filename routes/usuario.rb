class MyApp < Sinatra::Base
    post '/usuario/validar' do
        rpta = Usuario.where(:username => params['usuario'], :password => params['contrasenia']).count()
        if rpta == 1
            #usuario_id = Usuario.select(:id).where(:usuario => params['usuario'], :contrasenia => params['contrasenia']).first().id
            #Acceso.new(:usuario_id => usuario_id, :momento => Time.now).save
        end
        rpta.to_s
    end
end