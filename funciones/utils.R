###################################################################################################

#----------------------------------------------------------------------------------------------------------------------
#----------------------------------- 1. Función para crear fxr conjuntos para CV    -----------------------------------
#----------------------------------------------------------------------------------------------------------------------

#----------------------------> Input

# * data:   Datos de entrenamiento
# * folds:  Trozos para CV (por ejemplo 5 equivale a una particion de 80-20 para Train/Vl)
# * reps:   Repeticiones para CV 
# * target: Nombre de la variables objetivo 
# * seed_value:  Semilla para controlar partición

#----------------------------> Output

# * Si se han fijado f folds y r reps, se genera una lista con fxr elementos.
#   Cada elemento contiene los siguientes atributos:
#         1) repeat: número de la repetición 
#         2) fold: número de la partición
#         3) train_data: Conjunto de Train
#         4) validation_data: Conjunto de Validation

###################################################################################################
fold_rep_for_cv <- function(data, folds, reps, target, seed_value) 
{
  result <- list()
  set.seed(seed_value)
  folds <- vfold_cv(data, v = folds, strata = target, repeats = reps)
  folds <- folds$splits
  # Iniciador
  i = 1
  for (fold in folds)
  { 
    # Conjunto entero de datos (df)
    data <- fold[["data"]]
    # Generamos un id equivalente al id de fila
    data$row_id <- row.names(data)
    # Listado con todos los row_id
    row_tot <- as.integer(rownames(data))
    # Listado de row_id para Train
    row_train <- fold[["in_id"]]
    # Conjunto de Train 
    train <- data %>% slice(row_train)
    # Listado de nodes para Train
    node_id_train_list <- train$row_id
    # Conjunto de Val 
    val <- filter(data, !row_id %in% node_id_train_list)
    # se elimina el ID creado
    val <- val %>% select(-row_id)
    train <- train %>% select(-row_id)
    
    repeticion <- fold[["id"]][["id"]]
    particion <- fold[["id"]][["id2"]]
    
    output <- list("repeat" = repeticion,
                   "fold"   = particion,
                   "train_data"   = train,
                   "validation_data"  = val)
    
    result[[i]] <- output
    i = i + 1
  }
  return(result)
}