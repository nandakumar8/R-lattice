
library(lattice)

xyplot(lat ~ long | cut(depth, 3), data = quakes,aspect = "iso", pch = ".", cex = 2, type = c("p", "g"),xlab = "Longitude", ylab = "Latitude",strip = strip.custom(strip.names = TRUE, var.name = "Depth"))

head(quakes)

###combine grids and differntiate using color
xyplot(lat ~ long, data = quakes, aspect = "iso",
       groups = cut(depth, breaks = quantile(depth, ppoints(4, 1))),
       auto.key = list(columns = 3, title = "Depth"),
       xlab = "Longitude", ylab = "Latitude")

###create magnitude condition variable
quakes$Magnitude <- equal.count(quakes$mag, 4)
summary(quakes$Magnitude)

depth.col <- grey.colors(100)[cut(quakes$depth, 100, label = FALSE)]
depth.ord <- rev(order(quakes$depth))

quakes$color <- depth.col
quakes.ordered <- quakes[depth.ord, ]

xyplot(lat ~ long | Magnitude, data = quakes.ordered, col = "black",
         aspect = "iso", fill.color = quakes.ordered$color, cex = 2,panel = function(x, y, fill.color, ..., subscripts) {
           fill <- fill.color[subscripts]
           panel.grid(h = -1, v = -1)
           panel.xyplot(x, y, pch = 21, fill = fill, ...)
         },
         xlab = "Longitude", ylab = "Latitude")

