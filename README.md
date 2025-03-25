# Taller-MySQL.

## Normalización
    
1. Crear una tabla HistorialPedidos que almacene cambios en los pedidos.
    
   CREATE TABLE HistorialPedidos (
        id INT PRIMARY KEY AUTO_INCREMENT,
        pedido__id INT,                  
        cliente__id INT,                 
        fecha_cambio DATETIME,          
        usuario VARCHAR(50),            
        tipo_cambio VARCHAR(20),        
        estado_anterior VARCHAR(50),    
        estado_nuevo VARCHAR(50),       
        razon_cambio TEXT,              
        total_anterior DECIMAL(10, 2),  
        total_nuevo DECIMAL(10, 2),     
        FOREIGN KEY (pedido__id) REFERENCES Pedidos(id),
        FOREIGN KEY (cliente__id) REFERENCES Clientes(id)
    );
2. Evaluar la tabla Clientes para eliminar datos redundantes y normalizar hasta 3NF.
3. Separar la tabla Empleados en una tabla de DatosEmpleados y otra para Puestos .
    ALTER TABLE Empleados
    DROP COLUMN puesto ,
    DROP COLUMN salario ,
    DROP COLUMN fecha_contratacion ;

    CREATE TABLE DatosEmpleados(
        id INT PRIMARY KEY AUTO_INCREMENT,
        empleado_id INT,
        salario INT,
        fecha_contratacion
    );
    CREATE TABLE Puestos(
        
    )   
4. Revisar la relación Clientes y UbicacionCliente para evitar duplicación de datos.
5. Normalizar Proveedores para tener ContactoProveedores en otra tabla.
6. Crear una tabla de Telefonos para almacenar múltiples números por cliente.
7. Transformar TiposProductos en una relación categórica jerárquica.
8. Normalizar Pedidos y DetallesPedido para evitar inconsistencias de precios.
9. Usar una relación de muchos a muchos para Empleados y Proveedores .
10. Convertir la tabla UbicacionCliente en una relación genérica de Ubicaciones .