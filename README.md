# Práctica 4 – Modelos Predictivos para Ictus  
**Autor:** Álvaro Rodríguez Yagüe  

## 📘 Descripción del Proyecto

Este proyecto tiene como objetivo aplicar diferentes técnicas de aprendizaje supervisado para predecir la probabilidad de que un paciente sufra un ictus, utilizando un conjunto de datos clínicos. El análisis incluye desde la exploración y tratamiento de los datos hasta la construcción, evaluación y comparación de modelos predictivos.

El trabajo se ha desarrollado dentro del contexto de las asignaturas *Aprendizaje Automático Avanzado* y *Matemática y Estadística para la Inteligencia Artificial*, como parte del máster en Inteligencia Artificial.

---

## 📊 Dataset

- Fuente: [Kaggle - Stroke Prediction Dataset](https://www.kaggle.com/datasets/fedesoriano/stroke-prediction-dataset)
- Observaciones: 5,110 pacientes
- Variables: 12 (10 predictoras, 1 identificador `id`, y la variable objetivo `stroke`)

Las variables incluyen edad, género, nivel de glucosa, índice de masa corporal (BMI), antecedentes de hipertensión y diabetes, ocupación, tipo de residencia y hábito de fumar.

---

## 🧪 Técnicas y Modelos Implementados

Se han desarrollado y ajustado los siguientes modelos predictivos:

1. **Árbol de Decisión (CART)**
2. **K-Nearest Neighbors (KNN)**
3. **Support Vector Machine (SVM)**
4. **Red Neuronal (MLP)**
5. **Método de Ensamble – Boosting**

Para cada modelo se han seguido las siguientes etapas:

- Análisis teórico y formulación matemática
- Justificación y tuning de hiperparámetros
- Evaluación mediante validación cruzada
- Medición de métricas sobre conjunto de test (Accuracy, AUC, Confusión, ROC)
- Visualización de resultados

---

## ⚙️ Proceso de Desarrollo

El flujo general del trabajo ha sido:

1. **Preprocesamiento**
   - Limpieza de datos
   - Imputación de valores faltantes
   - Recategorización y transformación de variables
   - Oversampling para desbalanceo de clases
2. **Partición de datos**
   - 80% entrenamiento / 20% test (estratificado)
3. **Entrenamiento y evaluación de modelos**
   - Optimización de hiperparámetros
   - Comparación de desempeño
4. **Análisis de resultados**
   - Comparativa final de modelos
   - Selección del modelo óptimo

---

## 📈 Resultados

Todos los modelos se han evaluado con métricas como **Accuracy**, **Kappa**, **Curva ROC** y **AUC**. La red neuronal y KNN (k=1) ofrecieron los mejores resultados en términos de precisión y balance.

Una curva ROC fue generada para cada modelo, y se realizó una comparativa final para identificar el modelo más eficiente en el conjunto de test.

---

## 📁 Estructura del Repositorio

├── data/ # Conjunto de datos original
├── funciones/ # Scripts de funciones auxiliares
├── outputs/ # Salidas de modelos y métricas
├── results/ # Tablas y métricas exportadas
├── img/ # Imágenes utilizadas y generadas
├── Modelos.qmd # Documento Quarto fuente
├── Modelos.html # Salida renderizada del informe
├── style.scss # Estilos personalizados
├── .gitignore # Archivos y carpetas ignoradas
├── .gitattributes # Configuración Git
└── README.md # Descripción del proyecto

yaml
Copiar
Editar

---

## 🧰 Tecnologías y Librerías

- **Lenguaje:** R
- **Entorno:** Quarto + RStudio
- **Paquetes:** `tidyverse`, `tidymodels`, `rpart`, `caret`, `nnet`, `e1071`, `xgboost`, `ROSE`, `themis`, `yardstick`, `ggplot2`, entre otros.

---

## ⚠️ Consideraciones

- El análisis es estrictamente académico.
- El modelo no debe utilizarse como herramienta diagnóstica.
- Toda la justificación matemática fue incluida para su evaluación en la asignatura correspondiente.

---

## 📬 Contacto

Para más información o sugerencias, puedes contactar con el autor a través de [LinkedIn](www.linkedin.com/in/álvaro-rodríguez-yagüe) o por correo académico.
