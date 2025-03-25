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

ALTER TABLE Empleados
DROP COLUMN puesto ,
DROP COLUMN salario ,
DROP COLUMN fecha_contratacion ;
