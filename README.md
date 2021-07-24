API REST

Requisitos base de datos mysql
incluyo archivo databe.sql con el script para generar la misma base de datos usada en local
Utilice Xampp para manejar dicha base de datos en local, sugiero usar xampp para la prueba.


para ejecutar el programa 
1. abrir consola ubicada en la carpeta del programa
2. comando (npm install) para instalar las dependencias del programa
3. comando (npm start) para ejecutar el codigo en el puerto 9000 

los llamados a la API se realizan por medio de las siguientes rutas:

GET
Get: Obtiene lista completa de ventas
http://localhost:9000/api/
Get by id: obtiene una venta por id de VENTA
http://localhost:9000/api/id
Get by proveedor id: obtiene una listas de ventas por id de proveedor
http://localhost:9000/api/byproveedorid/(id_proveedor)
ejemplo:
http://localhost:9000/api/byproveedorid/1
Response:
 [ {
        "id": 1,
        "proveedor": "vendedor1",
        "id_proveedor": 1,
        "detalle": "comida",
        "ventas_valor": 10000,
        "fecha": "2021-07-01T05:00:00.000Z"
    }
 ]

Get by proveedor: obtiene una listas de ventas por nombre de proveedor
http://localhost:9000/api/byproveedorname/(name)
ejemplo:
http://localhost:9000/api/byproveedorname/vendedor2
Response:
[
    {
        "id": 2,
        "proveedor": "vendedor2",
        "id_proveedor": 2,
        "detalle": "recursos",
        "ventas_valor": 200000,
        "fecha": "2021-07-01T05:00:00.000Z"
    }
]

Get by fecha de venta: obtiene una lista de ventas por fecha indicada
http://localhost:9000/api/byfecha/(año-mes-dia)
ejemplo:
http://localhost:9000/api/byfecha/2021-07-01
Response:
[
    {
        "id": 1,
        "proveedor": "vendedor1",
        "id_proveedor": 1,
        "detalle": "comida",
        "ventas_valor": 10000,
        "fecha": "2021-07-01T05:00:00.000Z"
    },
    {
        "id": 2,
        "proveedor": "vendedor2",
        "id_proveedor": 2,
        "detalle": "recursos",
        "ventas_valor": 200000,
        "fecha": "2021-07-01T05:00:00.000Z"
    },
    {
        "id": 3,
        "proveedor": "vendedor3",
        "id_proveedor": 3,
        "detalle": "textil",
        "ventas_valor": 350000,
        "fecha": "2021-07-01T05:00:00.000Z"
    }
]