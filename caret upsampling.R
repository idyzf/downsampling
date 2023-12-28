
datExpr$ID <- rownames(datExpr)
datTraits$ID<- rownames(datTraits)
do<- left_join(datExpr, traitData)

train<-downSample(do, y, list=FALSE, yname = "1")
y <- as.factor(do$IDH)
datExpr<- train[,1:193]
traitData<- train[,193:196]
