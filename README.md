
# CAMPUS PIZZA

Este proyecto consiste en la creación y gestión de una base de datos para almacenar y consultar información sobre Cliente, Pedidos, Adiciones, Combos, Ingredientes y Productos. La base de datos está diseñada para facilitar el acceso y la manipulación de datos relacionados con la pizzeria

## Módulo 1: Creación de la Base de Datos

Se ha creado una base de datos llamada `campus_pizza` que incluye las siguientes tablas:

- **Clientes**
- **Productos**
- **Ingredientes**
- **Producto_Ingredientes**
- **Adiciones**
- **Combos**
- **Combo_Productos**
- **Pedidos**
- **Menu**
- **Pedido_Productos**


## Módulo 2: Inserción de Datos

Se han insertado datos en las tablas creadas, permitiendo la realización de diversas consultas sobre la información.

## Módulo 3: Consultas SQL

A continuación se presentan algunas de las consultas SQL implementadas para extraer información de la base de datos:

1. **Productos más vendidos (pizza, panzarottis, bebidas, etc.)**:
   ```sql
   SELECT p.nombre, SUM(pp.cantidad) AS total_vendidos
    FROM Productos p
    JOIN Pedido_Productos pp ON p.producto_id = pp.producto_id
    GROUP BY p.nombre
    ORDER BY total_vendidos DESC;

2. **Total de ingresos generados por cada combo**:
    ```sql
    SELECT C.nombre AS Combo_mas_vendido, PP.cantidad
    FROM combos C
    INNER JOIN pedido_productos PP ON C.combo_id = PP.pedido_id;

3. **Pedidos realizados para recoger vs. comer en la pizzería**:
    ```sql
    SELECT P.tipo_entrega AS 0_comer_1_recoger
    FROM pedidos P
    INNER JOIN pedido_productos PP ON P.pedido_id = PP.pedido_id;


## Instalación

1. Clona el repositorio:
   ```bash
   git clone <https://github.com/Kevinromero04/Campus_Pizza_Romero_Kevin.git>
   ```
2. Accede al directorio del proyecto:
   ```bash
   cd <Campus_Pizza_Romero_Kevin>
   ```
3. Crea la base de datos y ejecuta los scripts SQL necesarios para crear las tablas e insertar datos.

## Uso

Puedes utilizar cualquier cliente de base de datos compatible con SQL para conectarte a la base de datos y ejecutar consultas.

## Contribuciones

Si deseas contribuir a este proyecto, no dudes en abrir un issue o enviar un pull request.

## Licencia

Este proyecto está bajo la Licencia MIT. Consulta el archivo LICENSE para más detalles.
## Contacto

Para más información, contacta a [Micorreo](kevinromerorincon7@gmail.com).

---
```

