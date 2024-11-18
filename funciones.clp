;;Funciones para Insertar, Actualizar Y borrar


(deffunction agregar-enfermedad (?nombre ?sintoma1 $?sintomas)
   (assert (enfermedad (nombre ?nombre) (sintomas ?sintoma1 ?sintomas)))
   (printout t "Enfermedad agregada: " ?nombre crlf))


(deffunction actualizar-enfermedad (?nombre ?sintoma1 $?sintomas)
   (foreach ?hecho (find-all-facts ((?e enfermedad)) (eq ?e:nombre ?nombre))  
      (retract ?hecho))        
   (assert (enfermedad (nombre ?nombre) (sintomas ?sintoma1 ?sintomas))) 
   (printout t "Enfermedad actualizada: " ?nombre crlf))    


(deffunction borrar-enfermedad (?nombre)
   (do-for-all-facts ((?fact enfermedad))
      (if (eq (fact-slot-value ?fact nombre) ?nombre) then
         (retract ?fact)))
   (printout t "Enfermedad borrada: " ?nombre crlf))

