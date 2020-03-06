require 'json'

file = File.read('jugadores.json')
data = JSON.parse(file)

# data.each do |jugador| 
#       if jugador['nivel'] == 'A'
#             nivel = 5
#       elsif jugador['nivel'] == 'B'
#             nivel = 10
#       elsif jugador['nivel'] == 'C'
#             nivel = 15
#       elsif jugador['nivel'] == 'Cuauh'
#             nivel = 20
#       end
      
#       porcentaje_de_bono = jugador['goles'] * 100 / nivel
#       bono = porcentaje_de_bono * jugador['bono'] / 100
#       jugador['sueldo_completo'] = jugador['sueldo'] + bono

# end

# Refactorizado
data.each_with_object({}) { |ac, h| porcentaje_de_bono = ac['goles'] * 100 / ac['nivel']; bono = porcentaje_de_bono * ac['bono'] / 100;  ac['sueldo_completo'] = ac['sueldo'] + bono }
json_data_jugadores = data.to_json
File.open('sueldos_jugadores_calculados.json', 'w') { |file| file.write(json_data_jugadores) }