caption Prática 4: Modelos
AUTHOR
Álvaro Rodríguez Yagüe

ESCENARIO

Según la Organización Mundial de la Salud (OMS), el ictus es la segunda causa de muerte en el mundo, responsable de aproximadamente el 11% del total de fallecimientos.



El conjunto de datos sobre ictus (healthcare_dataset_stroke_data.csv) está compueto por 5110 observaciones (en este caso cada observación corresponde a un paciente) y de un total de 12 variables (10 variables explicativas, una variable id que tomará el rol de identificador y la variable objetivo stroke).

OBJETIVO

Construir un modelo (varios en nuestro caso) para predecir la probabilidad de sufrir un ictus en función de algunas variables de entrada como el sexo, la edad, diversas enfermedades, el hábito de fumar y otras.

ENUNCIADO DE LA PRÁCTICA

Descargarse el conjunto de datos desde el enlace facilitado

Analizar, depurar, procesar y recategorizar los datos (consejo: haz uso de los paquetes tidyverse, ggplt u otros que hayamos visto que resulten de interés).

Determinar la fijación del criterio de bondad de ajuste elegido.

Realizar los siguientes modelos:

Árbol de Decisión

KNN (K-Nearest Neighbors)

SVM (Support Vector Machine)

Red Neuronal

Algún método de Ensamble: Bagging, Boosting o Stacking (con uno soy feliz 🫠)

La parte del modelado, para cada una de las técnicas menciondas, debe contener los siguientes puntos:

Justificación de hiperparámetros a modelizar y el rango de los mismos.

Determinar el valor de los parámetros óptimos.

Selección de modelo ganador🎖 (en caso de que el propio algoritmo lo permita, explicar dicho modelo) y evaluación sobre conjunto Test

Comparar los 5 modelos generados
