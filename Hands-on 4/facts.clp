;;clientes

(deffacts cliente
    (cliente (customer-id 1) (nombre "Juan Pérez") (direccion "Av. Central 123, Ciudad") (telefono "555-1234") (tipo "menudista") (vale-activo TRUE) (recurrente TRUE))
    (cliente (customer-id 2) (nombre "Ana Gómez") (direccion "Calle Falsa 456, Ciudad") (telefono "555-5678") (tipo "mayorista") (vale-activo TRUE) (recurrente FALSE))
    (cliente (customer-id 3) (nombre "Carlos Martínez") (direccion "Calle 7, No. 45, Ciudad") (telefono "555-2345") (tipo "menudista") (vale-activo TRUE) (recurrente FALSE))
    (cliente (customer-id 4) (nombre "Laura Rodríguez") (direccion "Av. del Sol 890, Ciudad") (telefono "555-6789") (tipo "mayorista") (vale-activo TRUE) (recurrente TRUE))
    (cliente (customer-id 5) (nombre "Pedro López") (direccion "Calle 9, No. 21, Ciudad") (telefono "555-1122") (tipo "menudista") (vale-activo FALSE) (recurrente TRUE))
)

;;tarjetas de credito

(deffacts tarjeta-credito
    (tarjeta-credito (banco "BBVA") (grupo "Visa") (fecha-expiracion "01-12-23") (numero-tarjeta "1234-5678-9012-3456"))
    (tarjeta-credito (banco "Santander") (grupo "MasterCard") (fecha-expiracion "05-08-24") (numero-tarjeta "9876-5432-1098-7654"))
    (tarjeta-credito (banco "Citibank") (grupo "Visa") (fecha-expiracion "10-11-25") (numero-tarjeta "1122-3344-5566-7788"))
    (tarjeta-credito (banco "Scotiabank") (grupo "MasterCard") (fecha-expiracion "07-09-24") (numero-tarjeta "9988-7766-5544-3322"))
    (tarjeta-credito (banco "Banorte") (grupo "American Express") (fecha-expiracion "03-06-26") (numero-tarjeta "6677-8899-1122-3344"))
    (tarjeta-credito (banco "Liverpool VISA") (grupo "Visa") (fecha-expiracion "05-05-26") (numero-tarjeta "7744-8939-9867-9623"))
    
)

;;vales

(deffacts vale
    (vale (codigo "VALE2023") (monto 500) (fecha-expiracion "31-12-23") (cliente-id 1))
    (vale (codigo "DESCUENTO10") (monto 1000) (fecha-expiracion "15-01-24") (cliente-id 2))
    (vale (codigo "VALE25") (monto 2500) (fecha-expiracion "31-12-23") (cliente-id 3))
    (vale (codigo "FIESTA20") (monto 2000) (fecha-expiracion "01-02-24") (cliente-id 4))
    (vale (codigo "NAVIDAD15") (monto 1500) (fecha-expiracion "15-01-24") (cliente-id 5))
)


;;smartphones 
(deffacts smartphone
    (smartphone (product-id S1001) (marca "Apple") (modelo "iPhone16") (color "rojo") (precio 27000) (tipo "smartphone") (stock 10))
    (smartphone (product-id S1002) (marca "Samsung") (modelo "Galaxy S21") (color "negro") (precio 24000) (tipo "smartphone") (stock 15))
    (smartphone (product-id S1003) (marca "Xiaomi") (modelo "Redmi Note 12") (color "verde") (precio 15000) (tipo "smartphone") (stock 20))
    (smartphone (product-id S1004) (marca "Google") (modelo "Pixel 8") (color "blanco") (precio 28000) (tipo "smartphone") (stock 8))
    (smartphone (product-id S1005) (marca "OnePlus") (modelo "9 Pro") (color "negro") (precio 35000) (tipo "smartphone") (stock 5))
)

;;computadoras 
(deffacts computadora
    (computadora (product-id C2001) (marca "Apple") (modelo "MacBook Pro") (color "gris") (precio 47000) (tipo "computadora") (stock 7))
    (computadora (product-id C2002) (marca "Dell") (modelo "XPS 13") (color "plateado") (precio 38000) (tipo "computadora") (stock 10))
    (computadora (product-id C2003) (marca "HP") (modelo "Spectre x360") (color "negro") (precio 45000) (tipo "computadora") (stock 12))
    (computadora (product-id C2004) (marca "Lenovo") (modelo "ThinkPad X1 Carbon") (color "negro") (precio 52000) (tipo "computadora") (stock 6))
    (computadora (product-id C2005) (marca "Asus") (modelo "ZenBook 14") (color "azul") (precio 40000) (tipo "computadora") (stock 9))
)

;;accesorios 
(deffacts accesorio
    (accesorio (product-id A3001) (nombre "Cargador") (tipo "USB-C") (marca "Anker") (precio 500) (categoria "accesorio") (stock 50))
    (accesorio (product-id A3002) (nombre "Audífonos") (tipo "Inalámbricos") (marca "Sony") (precio 2500) (categoria "accesorio") (stock 30))
    (accesorio (product-id A3003) (nombre "Ratón") (tipo "Inalámbrico") (marca "Logitech") (precio 800) (categoria "accesorio") (stock 40))
    (accesorio (product-id A3004) (nombre "Teclado") (tipo "Mecánico") (marca "Corsair") (precio 3500) (categoria "accesorio") (stock 20))
    (accesorio (product-id A3005) (nombre "Soporte para Laptop") (tipo "Ajustable") (marca "Upright") (precio 1500) (categoria "accesorio") (stock 25))
)