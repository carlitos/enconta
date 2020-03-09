require 'json'

file = File.read('jugadores.json')
data = JSON.parse(file)

equipos   = []
jugadores = []
suma_compensaciones_por_equipo = []

data.group_by{ |h| [h['equipo']] }.each do |equipo, jugador |

      equipos << equipo  
      
      equipo.each do |team|
            
            sueldo_by_team = 0
 
            jugador.each do |player|
                  
                  porcentaje_de_bono = player['goles'] * 100 / player['nivel']

                  porcentaje_de_bono > 100 ? porcentaje_de_bono = 100 : porcentaje_de_bono                 

                  bono = porcentaje_de_bono * player['bono'] / 100
                  player['sueldo_completo'] = player['sueldo'] + bono
                        
                  sueldo_by_team += player['sueldo_completo']
            end

            suma_compensaciones_por_equipo << sueldo_by_team 
      end

end

json_result = equipos.zip(suma_compensaciones_por_equipo).to_json
File.open('data_by_team.json', 'w') { |file| file.write(json_result) }