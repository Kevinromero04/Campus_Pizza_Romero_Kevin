##consultas
-- 1. Productos más vendidos (pizza, panzarottis, bebidas, etc.)

SELECT p.nombre, SUM(pp.cantidad) AS total_vendidos
FROM Productos p
JOIN Pedido_Productos pp ON p.producto_id = pp.producto_id
GROUP BY p.nombre
ORDER BY total_vendidos DESC;

-- 2. Total de ingresos generados por cada combo
SELECT C.nombre AS Combo_mas_vendido, PP.cantidad
FROM combos C
INNER JOIN pedido_productos PP ON C.combo_id = PP.pedido_id;

-- 3. Pedidos realizados para recoger vs. comer en la pizzería

SELECT P.tipo_entrega AS 0_comer_1_recoger
FROM pedidos P
INNER JOIN pedido_productos PP ON P.pedido_id = PP.pedido_id;



-- 4. Adiciones más solicitadas en pedidos personalizados
SELECT A.nombre AS adicion_mas_solicitada
FROM adiciones A 
INNER JOIN pedido_productos PP ON A.adicion_id = PP.pedido_id;

-- 5. Cantidad total de productos vendidos por categoría
SELECT P.nombre AS NOMBRE, PP.cantidad
FROM pedido_productos PP 
INNER JOIN productos P ON PP.pedido_id = P.producto_id,


-- 6. Promedio de pizzas pedidas por cliente
SELECT AVG(PP.cantidad) AS promedio_de_pizzas_vendidas
FROM pedido_productos pp;

-- 7. Total de ventas por día de la semana

-- 8. Cantidad de panzarottis vendidos con extra queso

-- 9. Pedidos que incluyen bebidas como parte de un combo

-- 10. Clientes que han realizado más de 5 pedidos en el último mes

-- 11. Ingresos totales generados por productos no elaborados (bebidas, postres, etc.)

-- 12. Promedio de adiciones por pedido

-- 13. Total de combos vendidos en el último mes

-- 14. Clientes con pedidos tanto para recoger como para consumir en el lugar

-- 15. Total de productos personalizados con adiciones

-- 16. Pedidos con más de 3 productos diferentes

-- 17. Promedio de ingresos generados por día

-- 18. Clientes que han pedido pizzas con adiciones en más del 50% de sus pedidos

-- 19. Porcentaje de ventas provenientes de productos no elaborados

-- 20. Día de la semana con mayor número de pedidos para recoger

