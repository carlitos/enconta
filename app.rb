require 'json'

file = File.read('jugadores.json')
data = JSON.parse(file)

# Refactorizado
data.each_with_object({}) { |ac, h| porcentaje_de_bono = ac['goles'] * 100 / ac['nivel']; porcentaje_de_bono > 100 ? porcentaje_de_bono = 100 : porcentaje_de_bono; bono = porcentaje_de_bono * ac['bono'] / 100;  ac['sueldo_completo'] = ac['sueldo'] + bono; }
json_data_jugadores = data.to_json
File.open('sueldos_jugadores_calculados.json', 'w') { |file| file.write(json_data_jugadores) }