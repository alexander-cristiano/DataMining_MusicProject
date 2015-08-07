library(proxy)

datos <- read.csv(file = "user_artist_matrix_with_nans.csv", header = F, sep = ',')
datos<-datos[1:500,1:1000]
#hacer matriz de similaridad
similarity <- simil(datos)
matrix <- as.matrix(similarity)

#tomar los NA y de acuerdo con el usuario de ese NA se realiza el order
na<-which(is.na(datos))
naind<-as.matrix(arrayInd(which(is.na(datos)),dim(datos)))
#Hacer un loop desde 1 hasta fin de h[]
l = length(naind[,2])
calculo=naind
for (i in 1:l){
#ordenamos los indices de la matriz de similaridad para cada usuario que se encuentre en la matriz H
  ord <- as.matrix(order(matrix[naind[i,1],], decreasing=TRUE))
  kv=10
  division=0
  num=0
  denom=0
  for (k in 1:kv){
    sumatoria = datos[ord[k],naind[i,2]]*matrix[ord[k],naind[i,1]]
    if (is.na(sumatoria)){
      sumatoria=0
    }
    num=sumatoria+num
    denom=(matrix[ord[k],naind[i,1]])+denom
  }
  division = num/denom
  if (division>=1){
    calculo[i,1]=na[i]
    calculo[i,2]=1
    
  }else{
    calculo[i,1]=na[i]
    calculo[i,2]=0
  }
}
x<- data.frame(calculo)
names(x)[1]="Id"
names(x)[2]="Prediction"
write.table(x, file = "sampleSubmission.csv", quote = FALSE, row.names = FALSE, col.names = TRUE, sep = ",",qmethod = "escape")
