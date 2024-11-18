

;;Oferta por compran con banamex

(defrule iphone16-banamex-24meses
   (orden-compra (order-number ?order-num) (customer-id ?customer-id) (producto S1001) (metodo-pago "Banamex"))
   =>
   (printout t "Cliente #" ?customer-id ", Orden #" ?order-num ": ¡Oferta! 24 meses sin intereses en la compra de un iPhone 16 con tarjeta Banamex." crlf)
)

;;Oferta por comprara con tarjeta de liverpool

(defrule samsung-note21-liverpool-12meses
   (orden-compra (order-number ?order-num) (customer-id ?customer-id) (producto S1002) (metodo-pago "Liverpool VISA"))
   =>
   (printout t "Cliente #" ?customer-id ", Orden #" ?order-num ": ¡Oferta! 12 meses sin intereses en la compra de un Samsung Note 21 con tarjeta Liverpool VISA." crlf)
)

;;descuento por comprar un smartphone

(defrule smartphone-oferta-accesorios
   (orden-compra (order-number ?order-num) (customer-id ?customer-id) (producto ?prod) (total ?total))
   (smartphone (product-id ?prod))
   =>
   (bind ?descuento (* 0.15 ?total))
   (printout t "Cliente #" ?customer-id ", Orden #" ?order-num ": ¡Oferta! 15% de descuento en accesorios por la compra de un Smartphone." crlf)
   (printout t "Descuento aplicado: " ?descuento crlf)
)

;;oferta en accesorios

(defrule computadora-apple-descuento-accesorios
   (orden-compra (order-number ?order-num) (customer-id ?customer-id) (producto C2001) (metodo-pago ?metodo))
   =>
   (printout t "Cliente #" ?customer-id ", Orden #" ?order-num ": ¡Oferta! 10% de descuento en accesorios por la compra de una computadora Apple." crlf)
)

;;Descuento a clientes recurentes

(defrule descuento-multiples-ordenes
   (cliente (customer-id ?customer-id) (recurrente TRUE))
   (orden-compra (customer-id ?customer-id) (order-number ?order1))
   (orden-compra (customer-id ?customer-id) (order-number ?order2&:(neq ?order1 ?order2)))
   =>
   (printout t "Cliente #" ?customer-id ": ¡Oferta! Por ser cliente recurrente con múltiples órdenes, recibe un descuento del 5% en su próxima compra." crlf)
)


;;oferta por comprar smartphone

(defrule regalo-funda-mica
   (orden-compra (order-number ?order-num) (customer-id ?customer-id) (producto ?prod))
   (smartphone (product-id ?prod))
   =>
   (printout t "Cliente #" ?customer-id ", Orden #" ?order-num ": ¡Oferta! Recibe una funda y mica gratis por la compra de un Smartphone." crlf)
)

;;oferta por comprar mas de 50000

(defrule meses-sin-intereses-monto
   (orden-compra (order-number ?order-num) (customer-id ?customer-id) (total ?total&:(>= ?total 50000)) (metodo-pago "Tarjeta de Crédito"))
   =>
   (printout t "Cliente #" ?customer-id ", Orden #" ?order-num ": ¡Oferta! 12 meses sin intereses por compras mayores a $50,000." crlf)
)

;;oferta por comprar cantidad grande de compus

(defrule descuento-computadora-dell
   (orden-compra (order-number ?order-num) (customer-id ?customer-id) (producto C2002) (cantidad ?cantidad&:(>= ?cantidad 5)))
   =>
   (printout t "Cliente #" ?customer-id ", Orden #" ?order-num ": ¡Oferta! 10% de descuento por la compra de 5 o más computadoras Dell." crlf)
)


;;oferta por pagar con BBVA

(defrule vale-regalo-bbva
   (orden-compra (order-number ?order-num) (customer-id ?customer-id) (metodo-pago "BBVA"))
   =>
   (printout t "Cliente #" ?customer-id ", Orden #" ?order-num ": ¡Oferta! Recibe un vale de $300 por pagar con BBVA." crlf)
)

;;descuento a mayoristas 

(defrule descuento-apple-mayoristas
   (orden-compra (order-number ?order-num) (customer-id ?customer-id) (producto ?prod))
   (cliente (customer-id ?customer-id) (tipo "mayorista"))
   (or (smartphone (product-id ?prod) (marca "Apple"))
       (computadora (product-id ?prod) (marca "Apple")))
   =>
   (printout t "Cliente #" ?customer-id ", Orden #" ?order-num ": ¡Oferta! 7% de descuento en productos Apple por ser mayorista." crlf)
)

;;Oferta por comprar varios productos de lenovo

(defrule regalo-audifonos-lenovo
   (orden-compra (order-number ?order-num) (customer-id ?customer-id) (producto C2004) (cantidad ?cantidad&:(>= ?cantidad 3)))
   =>
   (printout t "Cliente #" ?customer-id ", Orden #" ?order-num ": ¡Oferta! Audífonos de regalo por comprar más de 3 computadoras Lenovo." crlf)
)

;;oferta de envio gratis

(defrule envio-gratuito
   (orden-compra (order-number ?order-num) (customer-id ?customer-id) (total ?total&:(>= ?total 20000)))
   =>
   (printout t "Cliente #" ?customer-id ", Orden #" ?order-num ": ¡Oferta! Envío gratuito por compras mayores a $20,000." crlf)
)

;;oferta de accesorios por comprara computadora

(defrule descuento-accesorios-por-computadora
   (orden-compra (order-number ?order-num) (customer-id ?customer-id) (producto ?prod))
   (computadora (product-id ?prod))
   =>
   (printout t "Cliente #" ?customer-id ", Orden #" ?order-num ": ¡Oferta! 5% de descuento en accesorios por la compra de una computadora." crlf)
)

;;Oferta por pagar con santander
  
(defrule descuento-santander
   (orden-compra (order-number ?order-num) (customer-id ?customer-id) (metodo-pago "Santander"))
   =>
   (printout t "Cliente #" ?customer-id ", Orden #" ?order-num ": ¡Oferta! 8% de descuento por pagar con Santander." crlf)
)

;;oferta por comprar algo con stock bajo


(defrule descuento-stock-bajo
   (orden-compra (order-number ?order-num) (customer-id ?customer-id) (producto ?prod))
   (or (smartphone (product-id ?prod) (stock ?stock&:(< ?stock 5)))
       (computadora (product-id ?prod) (stock ?stock&:(< ?stock 5)))
       (accesorio (product-id ?prod) (stock ?stock&:(< ?stock 5))))
   =>
   (printout t "Cliente #" ?customer-id ", Orden #" ?order-num ": ¡Oferta! 10% de descuento por producto con stock bajo." crlf)
)

;; vale por comprar una   MacBook

(defrule vale-macbook
   (orden-compra (order-number ?order-num) (customer-id ?customer-id) (producto C2001))
   =>
   (printout t "Cliente #" ?customer-id ", Orden #" ?order-num ": ¡Oferta! Recibe un vale de $500 por la compra de una MacBook Pro." crlf)
)

;;oferta por comprara accesorios

(defrule descuento-accesorios-cantidad
   (orden-compra (order-number ?order-num) (customer-id ?customer-id) (producto ?prod) (cantidad ?cantidad&:(>= ?cantidad 10)))
   (accesorio (product-id ?prod))
   =>
   (printout t "Cliente #" ?customer-id ", Orden #" ?order-num ": ¡Oferta! 15% de descuento por la compra de 10 o más accesorios." crlf)
)

;;oferta por comprar apple con bbva

(defrule meses-sin-intereses-apple-bbva
   (orden-compra (order-number ?order-num) (customer-id ?customer-id) (producto ?prod) (metodo-pago "BBVA"))
   (or (smartphone (product-id ?prod) (marca "Apple"))
       (computadora (product-id ?prod) (marca "Apple")))
   =>
   (printout t "Cliente #" ?customer-id ", Orden #" ?order-num ": ¡Oferta! 6 meses sin intereses en productos Apple pagados con BBVA." crlf)
)

;;oferta regalo mouse 

(defrule regalo-mouse
   (orden-compra (order-number ?order-num) (customer-id ?customer-id) (producto ?prod))
   (computadora (product-id ?prod))
   =>
   (printout t "Cliente #" ?customer-id ", Orden #" ?order-num ": ¡Oferta! Recibe un mouse inalámbrico gratis por la compra de una computadora." crlf)
)

;;descuento por mayoristas 

(defrule descuento-mayorista
   (cliente (customer-id ?customer-id) (tipo "mayorista"))
   (orden-compra (order-number ?order-num) (customer-id ?customer-id) (total ?total))
   =>
   (printout t "Cliente #" ?customer-id ", Orden #" ?order-num ": ¡Promoción! Descuento del 2% adicional por ser mayorista." crlf)
)

;;Clasificar a los clientes

(defrule clasificar-cliente
   (orden-compra (order-number ?order-num) (customer-id ?customer-id) (cantidad ?cantidad))
   =>
   (if (< ?cantidad 10)
       then 
       (assert (cliente (customer-id ?customer-id) (tipo "menudista")))
       (printout t "Cliente #" ?customer-id " clasificado como Menudista. Orden #" ?order-num crlf))
   (if (>= ?cantidad 10)
       then 
       (assert (cliente (customer-id ?customer-id) (tipo "mayorista")))
       (printout t "Cliente #" ?customer-id " clasificado como Mayorista. Orden #" ?order-num crlf))
)


