install.packages("openxlsx")
install.packages("corrplot")
library("openxlsx")
library("corrplot")
Data = read.xlsx(file.choose())
Data$BCU10 = Data$BCU10E
DF = na.omit(Data)
DF$TASA_HIP = NULL
DF$AÑO = NULL
DF$MES = NULL
DF$BCU10E = NULL


cors = cor(DF[,c("SMM","DESEMPLEO","IMACEC","BCU10","PIB","TM","Interbancaria")])
corrplot(cors, type = "lower", diag = F,  cl.pos = "n", method = "square")
