;;Template para smartphones 

(deftemplate orden-compra
  (slot order-number)
  (slot customer-id)
  (slot producto) 
  (slot cantidad) 
  (slot total) 
  (slot metodo-pago) 
)

;;Template para smartphones 

(deftemplate smartphone
  (slot product-id) 
  (slot marca)
  (slot modelo)
  (slot color)
  (slot precio)
  (slot tipo) 
  (slot stock) 
)

;;Template para computadoras 

(deftemplate computadora
  (slot product-id) 
  (slot marca)
  (slot modelo)
  (slot color)
  (slot precio)
  (slot tipo) 
  (slot stock) 
)

;;Template para accesorios 

(deftemplate accesorio
  (slot product-id) 
  (slot nombre)
  (slot tipo) 
  (slot marca)
  (slot precio)
  (slot categoria) 
  (slot stock) 
)


;;Template para clientes

(deftemplate cliente
  (slot customer-id)
  (multislot nombre)
  (multislot direccion)
  (slot telefono)
  (slot tipo) 
  (slot vale-activo) 
  (slot recurrente) 
)

;;Template para tarjetas de crédito

(deftemplate tarjeta-credito
  (slot banco) 
  (slot grupo) 
  (slot fecha-expiracion)
  (slot numero-tarjeta)
)

;;Template para vales

(deftemplate vale
  (slot codigo)
  (slot monto)
  (slot fecha-expiracion)
  (slot cliente-id)
)





