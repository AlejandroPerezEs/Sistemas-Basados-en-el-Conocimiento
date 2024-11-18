****PASOS PARA EJECUTAR****

(load "enfermedades.clp")
(load "consultas.clp")
(load "rules.clp")
(load "funciones.clp")

(reset)
(run)



****Ejemplos de Insertar, actualizar y borrar****


(agregar-enfermedad "COVID-19" "Tos persistente" "Dolor en el pecho" "Dificultad para respirar")

(actualizar-enfermedad "COVID-19" "Tos seca" "Dolor de garganta" "Fatiga")

(borrar-enfermedad "COVID-19")

