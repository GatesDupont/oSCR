make.statespace <-
function (ll = NULL, minx = NA, maxx = NA, miny = NA, maxy = NA, 
    nx = 40, ny = NULL, buffer = 0,delta) 
{
    if (is.null(ny)) 
        ny <- nx
    if (!is.null(ll)) {
        minx <- min(ll[, 1])
        maxx <- max(ll[, 1])
        miny <- min(ll[, 2])
        maxy <- max(ll[, 2])
        minx <- minx - buffer
        maxx <- maxx + buffer
        miny <- miny - buffer
        maxy <- maxy + buffer
    }
    xgr <- seq(minx + delta/2, maxx - delta/2, delta)
    ygr<-  seq(miny + delta/2, maxy - delta/2, delta)
    gr<- as.matrix(expand.grid(xgr,ygr))
    dimnames(gr)<-list(NULL,c("X","Y"))
gr
}
