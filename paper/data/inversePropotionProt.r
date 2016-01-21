support<-seq(0,1,length=21)
confidence<-support
f <- function(x,y) x*y
z<-outer(support,confidence,f)
rgb.palette <- colorRampPalette(c("blue","orange","red"))
filled.contour(support,confidence,z,col=rgb.palette(20), plot.title=title(xlab='support',ylab='confidence'))


z<-outer(support,confidence,function(x,y) x)
filled.contour(support,confidence,z,col=rgb.palette(20), plot.title=title(xlab='support',ylab='confidence'))

z<-outer(support,confidence,function(x,y) y)
filled.contour(support,confidence,z,col=rgb.palette(20), plot.title=title(xlab='support',ylab='confidence'))
