library(shiny)

shinyUI(navbarPage(
  title = "Proyecto de Minería",
  tabPanel("1.Explicación del problema",
           h1("Predicción de artistas de música a usuarios"),
           "Predecir cuales artistas de música un usuario ha escuchado.
           De acuerdo a una data que sido recogida a través del servicio Last.fm se debe predecir si los usuarios han escuchado algún artista de música. Esta data es una matriz de 1.372 usuarios y 4.322 artistas donde cada valor (i,j) es el número de diferentes canciones que el usuario i ha escuchado del artista j. También la matriz contiene 35.021 “NA” valores perdidos a los cuales se les ha de proporcionar 0 o 1 como valor. Si el valor es 1 quiere decir que el usuario ha escuchado al menos una canción de un artista."),
  tabPanel("2.Preprocesamiento de datos"),
  tabPanel("3.Algoritmo"),
  tabPanel("4.Análisis Exploratorio"),
  tabPanel("5.Resultado"),
  tabPanel("6.Pruebas")
))