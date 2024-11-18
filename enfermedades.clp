
;;Definimos el template de enfermedades

(deftemplate enfermedad
   (slot nombre)                          
   (multislot sintomas))                 

;;Definimos un template para las cosultas

(deftemplate consulta
   (slot numero)               ; Número único para cada consulta
   (multislot sintomas)         ; Lista de síntomas
)


;;Declaramos los hechos 

(deffacts enfermedades
   (enfermedad (nombre "Tuberculosis") (sintomas "Tos persistente" "Pérdida de peso" "Fiebre" "Sudores nocturnos" "Dolor en el pecho"))
   (enfermedad (nombre "Neumonía bacteriana") (sintomas "Fiebre" "Escalofríos" "Dolor en el pecho" "Dificultad para respirar" "Tos con flema"))
   (enfermedad (nombre "Meningitis bacteriana") (sintomas "Fiebre alta" "Dolor de cabeza severo" "Rigidez en el cuello" "Náuseas" "Sensibilidad a la luz"))
   (enfermedad (nombre "Tos ferina") (sintomas "Tos intensa" "Dificultad para respirar" "Sonido de 'gallo' al toser" "Fatiga" "Congestión nasal"))
   (enfermedad (nombre "Infección por Salmonella") (sintomas "Diarrea" "Fiebre" "Calambres abdominales" "Náuseas" "Vómitos"))
   (enfermedad (nombre "Gripe") (sintomas "Fiebre alta" "Dolor de cabeza" "Dolor muscular" "Tos seca" "Fatiga"))
   (enfermedad (nombre "COVID-19") (sintomas "Fiebre" "Tos seca" "Dificultad para respirar" "Pérdida del gusto y olfato" "Fatiga"))
   (enfermedad (nombre "Sarampión") (sintomas "Fiebre" "Erupciones en la piel" "Tos" "Conjuntivitis" "Moqueo nasal"))
   (enfermedad (nombre "Varicela") (sintomas "Erupción en forma de ampollas" "Fiebre" "Fatiga" "Dolor de cabeza" "Pérdida de apetito"))
   (enfermedad (nombre "Hepatitis B") (sintomas "Ictericia" "Fatiga" "Dolor abdominal" "Náuseas" "Orina oscura"))
)

