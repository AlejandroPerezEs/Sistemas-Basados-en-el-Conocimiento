;;Conjunto de reglas para predecir las enfermedades


(defrule diagnostico-varicela
   ?consulta <- (consulta (numero ?num) (sintomas $? "Erupción en forma de ampollas" "Fiebre" "Fatiga" "Dolor de cabeza" "Pérdida de apetito" $?))
   =>
   (printout t "Número de consulta: " ?num crlf "Diagnóstico: Varicela" crlf))

(defrule diagnostico-hepatitis-b
   ?consulta <- (consulta (numero ?num) (sintomas $? "Ictericia" "Fatiga" "Dolor abdominal" "Náuseas" "Orina oscura" $?))
   =>
   (printout t "Número de consulta: " ?num crlf "Diagnóstico: Hepatitis B" crlf))

(defrule diagnostico-tuberculosis
   ?consulta <- (consulta (numero ?num) (sintomas $? "Tos persistente" "Pérdida de peso" "Fiebre" "Sudores nocturnos" "Dolor en el pecho" $?))
   =>
   (printout t "Número de consulta: " ?num crlf "Diagnóstico: Tuberculosis" crlf))

(defrule diagnostico-neumonia-bacteriana
   ?consulta <- (consulta (numero ?num) (sintomas $? "Fiebre" "Escalofríos" "Dolor en el pecho" "Dificultad para respirar" "Tos con flema" $?))
   =>
   (printout t "Número de consulta: " ?num crlf "Diagnóstico: Neumonía bacteriana" crlf))

(defrule diagnostico-meningitis-bacteriana
   ?consulta <- (consulta (numero ?num) (sintomas $? "Fiebre alta" "Dolor de cabeza severo" "Rigidez en el cuello" "Náuseas" "Sensibilidad a la luz" $?))
   =>
   (printout t "Número de consulta: " ?num crlf "Diagnóstico: Meningitis bacteriana" crlf))

(defrule diagnostico-tos-ferina
   ?consulta <- (consulta (numero ?num) (sintomas $? "Tos intensa" "Dificultad para respirar" "Sonido de 'gallo' al toser" "Fatiga" "Congestión nasal" $?))
   =>
   (printout t "Número de consulta: " ?num crlf "Diagnóstico: Tos ferina" crlf))

(defrule diagnostico-salmonella
   ?consulta <- (consulta (numero ?num) (sintomas $? "Diarrea" "Fiebre" "Calambres abdominales" "Náuseas" "Vómitos" $?))
   =>
   (printout t "Número de consulta: " ?num crlf "Diagnóstico: Infección por Salmonella" crlf))

(defrule diagnostico-gripe
   ?consulta <- (consulta (numero ?num) (sintomas $? "Fiebre alta" "Dolor de cabeza" "Dolor muscular" "Tos seca" "Fatiga" $?))
   =>
   (printout t "Número de consulta: " ?num crlf "Diagnóstico: Gripe" crlf))

(defrule diagnostico-covid-19
   ?consulta <- (consulta (numero ?num) (sintomas $? "Fiebre" "Tos seca" "Dificultad para respirar" "Pérdida del gusto y olfato" "Fatiga" $?))
   =>
   (printout t "Número de consulta: " ?num crlf "Diagnóstico: COVID-19" crlf))

(defrule diagnostico-sarampion
   ?consulta <- (consulta (numero ?num) (sintomas $? "Fiebre" "Erupciones en la piel" "Tos" "Conjuntivitis" "Moqueo nasal" $?))
   =>
   (printout t "Número de consulta: " ?num crlf "Diagnóstico: Sarampión" crlf))


