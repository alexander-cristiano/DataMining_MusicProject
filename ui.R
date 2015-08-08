library(shiny)

shinyUI(navbarPage(
  title = "Proyecto de Minería de Datos",
  
  tabPanel("1.Explicación del problema",
           h1("Predicción de artistas de música a usuarios"),
           p("Predecir cuales artistas de música un usuario ha escuchado. De acuerdo a una
             data que sido recogida a través del servicio Last.fm se debe predecir si los
             usuarios han escuchado algún artista de música. Esta data es una matriz de
             1.372 usuarios y 4.322 artistas donde cada valor (i,j) es el número de
             diferentes canciones que el usuario i ha escuchado del artista j.
             También la matriz contiene 35.021 “NA” valores perdidos a los cuales se les ha
             de proporcionar 0 o 1 como valor. Si el valor es 1 quiere decir que el usuario
             ha escuchado al menos una canción del artista.")
  ),
  tabPanel("2.Preprocesamiento de datos"
  ),
  tabPanel("3.Algoritmo",
           h1("Sistema de Recomendación basados en Filtrado Colaborativo (K-Vecinos)"),
           p("Para la construcción del algoritmo que hallará la solución al problema nos
             basamos en los sistemas de recomendación que son un sistema inteligente que
             proporciona a los usuarios una serie de sugerencias personalizadas
             (recomendaciones) sobre un determinado tipo de elementos (items)."),
           p("Dentro de los sistemas de recomendación basados en filtrado colaborativo,
             existen dos clasificaciones que son los basados en memoria y los basados en
             modelos."),
           p("Métodos basados en memoria: emplean métricas de similaridad para determinar
             el parecido entre una pareja de usuarios. Para ello calculan los items que han
             sido votados por ambos usuarios y comparan dichos votos para calcular la
             similaridad."),
           p("Métodos basados en modelos: utilizan la matriz de votaciones para crear un
             modelo a través del cual establecer el conjunto de usuarios similares al
             usuario activo.")
  ),
  tabPanel("4.Análisis Exploratorio"),
  
  tabPanel("5.Resultado"),
  
  tabPanel("6.Pruebas")
))