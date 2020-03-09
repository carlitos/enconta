# Enconta

![](cuervos-cuervos.gif)

## Descripción de funcionamiento
- ``` app.rb ``` es el programa con los requerimientos necesarios para calcular el sueldo del jugador y colocarlo en el campo especificado como ```sueldo_completo: null ```

```json
{
    "nombre": "Juan Perez",
    "nivel": 15,
    "goles": 10,
    "sueldo": 50000,
    "bono": 25000,
    "sueldo_completo": 66500,
    "equipo": "rojo"
  }
```


- ``` app_por_equipo.rb ``` es el programa que recibe un json para poder calcular el total de sueldos a pagar por los equipos que existan en el json leido, regresa un arreglo json con el nombre del equipo y cuanto se debe de pagar por equipo, no importa cuantos equipos existan en el json.

```json
[[["rojo"],110000],[["azul"],160000],[["verde"],25650],[["amarillo"],62000]]
```

## Requerimientos para su funcionamiento
- Tener instalado ruby 2.5.0 en adelante


## Funcionalidad primer programa
- Calcular primero el porcentaje del bono dependiendo cuantos haya anotado por nivel
- Validar sí los goles que anoto no exceden al 100% de los goles del mes
- Si los excede de todos se le paga el 100% sino si lo que calcula
- Multiplicar el porcentaje del bono por el monto del bono y convertirlo a entero
- Sumar el sueldo más el bono calculado y llenar el campo sueldo completo

## Funcionalidad primer segundo programa 
- Lo mismo del primero pero por equipo