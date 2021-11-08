#### Scatter plot ####
?iris

plot(Sepal.Length ~ Sepal.Width, iris)

#### Line plot ####
x <- -3:3
y <- x^3
y2 <- x^2

plot(x=x ,y = y) # Point by defualt
plot(x=x ,y = y, type = "l") 

plot(x=x ,y = y, type = 'n') # Blank plot
lines(x = x, y = y, col = "red") # Add first line
lines(x = x, y = y2, col = "blue") # Add second line

#### Box plot ####

boxplot(Sepal.Length ~ Species, iris)

#### Bar plot ####
rows <- sample(nrow(iris),size = 97, replace = F)
IRIS <- iris[rows,]
tb <- table(IRIS$Species)

print(tb)
barplot(tb)

#### Pie chart ####
pie(tb)

#### Save R plots ####
png("PIE.png")
pie(tb)
dev.off()

#### ggplot2: scatter plot ####
library(ggplot2)
?iris
g <- ggplot(data = iris) # Blank plot
print(g)
g1 <- g + geom_point(aes(y = Sepal.Length, x = Sepal.Width)) # Add data as scatter plot
print(g1)
plot(Sepal.Length ~ Sepal.Width, iris) # R plot
# Add data as scatter plot with colors of points indicatated by species
g2 <- g + geom_point(aes_string(y = "Sepal.Length", x = "Sepal.Width", col = "Species")) 
print(g2)

#### ggplot2: line plot ####
x1 <- -3:3
y1 <- x1^3
y2 <- x1^2

#Plot from vectors
ggplot()+
  geom_line(aes(x = x1, y = y1), col = "red") +
  geom_line(aes(x = x1, y = y2), col = "blue")

#Plot from data frame
dat1 <- data.frame(x = x1, y1 =  y1, y2 = y2)
rm(x1,y1,y2)
ggplot()+
  geom_line(data = dat1, aes(x = x, y = y1), col = "red")+
  geom_line(data = dat1, aes(x = x, y = y2), col = "blue")

#Plot from melt data frame # For multiple lines (spaghetti plot)
library(reshape2)
mdat1 <- melt(dat1,id.vars = "x")
head(mdat1)
# 'group' tells which data points are on the same line.
# col (color) tells which data points have the same or different colors
ggplot(data = mdat1, aes(x=x,y=value,group=variable,col=variable)) +
  geom_line()

#### ggplot2: box plot ####
ggplot(data = iris)+
  geom_boxplot(aes(x= Species, y = Sepal.Length))
# col vs fill
ggplot(data = iris)+
  geom_boxplot(aes(x= Species, y = Sepal.Length, col = Species), fill = "black")
ggplot(data = iris)+
  geom_boxplot(aes(x= Species, y = Sepal.Length, fill = Species), col = "black")

#### ggplot2: bar plot ####
rows <- sample(nrow(iris),size = 97, replace = F)
IRIS <- iris[rows,]

#Plot uncounted data
ggplot(IRIS)+
  geom_bar(aes(x = Species) ,stat = "count")

#Plot counted (aggregated) data
aIRIS <- data.frame(table(IRIS$Species))
print(aIRIS)
ggplot(aIRIS)+
  geom_bar(aes(x = Var1, y = Freq) ,stat = "identity")

#### ggplot2: pie chart ####
gpie <- ggplot(aIRIS)+
  geom_bar(aes(x = "", y = Freq, fill = Var1) ,stat = "identity") #x must be ""
print(gpie)
gpie <- gpie + coord_polar("y", start=0)
print(gpie)

#### save ggplot2 ####
ggsave(plot = gpie, file = "Plots/pie.tiff",width = 3, height = 3, units = "in",dpi = 600)


#### Naming title and axes ####
print(aIRIS)
g <- ggplot(aIRIS)+
  geom_bar(aes(x = Var1, y = Freq, fill = Var1) ,stat = "identity")
print(g)
g <- g + ggtitle("iris dataset") # Add title
print(g)
g <- g + ylab("Count (n)") +  # Add/change axis titles
  xlab("Species")
print(g)

#### Customize axes ####
g <- ggplot(aIRIS)+
  geom_bar(aes(x = Var1, y = Freq, fill = Var1) ,stat = "identity") +
  ggtitle("iris dataset") 

print(g)

# Specify numbers on the y-axis to be shown
g + scale_y_continuous(name = "Count (n)", breaks = seq(0,40,5)) 

# Plot data on log10 scale without log10-transforming the data
g + scale_y_log10(name = "Count (n)") 

# Rename discrete values on X-axis
g + scale_x_discrete(name = "Species", labels = c("S","VE","VI")) 

#### Customize color and fill ###
g <- ggplot(aIRIS)+
  geom_bar(aes(x = Var1, y = Freq, fill = Var1, color = Var1) ,stat = "identity") +
  ggtitle("iris dataset") 

print(g)
#Customize/specify colors
g + scale_color_manual(name = "Species", values = c("yellow","purple","pink"))

#Customize/specify fills
g + scale_fill_manual(name = "Species", values = c("#ff0000","#00ff00","#0000ff"))

#### Color brewer ###
bdat <- expand.grid(x = 1:100, y = 1:100)

low <- exp(rnorm(n = 5000, mean = 1, sd = 0.5))
hi <- max(low) - low
bdat$z <- sample(c(hi,low),replace = F)
truehist(bdat$z)

g <- ggplot()+
  geom_tile(data = bdat, aes(x=x,y=y,fill = z)) #Heatmap and Raster plot
print(g)
g + scale_fill_distiller(type = "div", palette = "RdBu")
g + scale_fill_distiller(type = "div", palette = "RdGy")
g + scale_fill_distiller(palette = "Spectral")
g + scale_fill_distiller(type = "seq", palette = "YlOrBr")

#### Gradient color/fill ####
g + scale_fill_gradient2()
bdat$zbar <- bdat$z - mean(bdat$z) # Set the mid point to '0'

g <- ggplot()+
  geom_tile(data = bdat, aes(x=x,y=y,fill = zbar))
print(g)
g + scale_fill_gradient2()
g + scale_fill_gradientn(colours = terrain.colors(10))
print(terrain.colors(10))
g + scale_fill_gradient(low = "yellow", high = "red")

#### Theme ####
g
g + theme_bw() # Good for publication!
g + theme_void()
g + theme_minimal()
g + theme_light()
g + theme_dark()
g + theme_test()
g + theme_classic() # Good for publication!

#### Theme pt.2 ####
?iris
g <- ggplot()+
  geom_point(data = iris, aes(x = Sepal.Length, y = Petal.Length, col = Species)) +
  theme_bw()
g + theme(panel.grid.minor = element_blank()) # Remove grid lines
g + theme(panel.grid.minor.x = element_blank()) # Remove grid lines
g + theme(panel.grid.minor.y = element_blank()) # Remove grid lines
g + theme(axis.title = element_text(family = "Comic Sans MS", size = 20)) # Customize fonts
g + theme(axis.text = element_text(angle = 90)) # Rotate axis texts
g + theme(legend.position =  "top") # Move the legend box to the top

#### Text annotations ####
?iris
g <- ggplot()+
  geom_point(data = iris, aes(x = Sepal.Length, y = Petal.Length, col = Species)) +
  theme_bw()

print(g)

g + annotate(geom="text", x=7, y=2, label="P-value = 0.023*",
               color="red")
lab <- expression(paste(italic("P"),"-value = 0.023*")) #Italicize "P"
g + annotate(geom="text", x=7, y=2, label=lab,
             color="red")

#### Lines and trends ####
?iris
g <- ggplot()+
  geom_point(data = iris, aes(x = Sepal.Length, y = Petal.Length, col = Species)) +
  theme_bw()

g + geom_hline(yintercept = 2, col = "pink") # Horizontal line
g + geom_vline(xintercept = 5.5, lty = 2) # Vertical line
g + geom_abline(intercept = 0, slope = 1, lwd = 5) # Diagonal line

#### Lines and trends pt.2 ####
ndat <- data.frame(x = seq(1,10,0.1))
ndat$y <- pi*ndat$x - exp(1) + rnorm(n = nrow(ndat), mean = 1, sd = 5)

g <- ggplot(ndat, aes(x = x, y = y))+
  geom_point() + theme_bw()
print(g)

g + geom_smooth(method = "lm") # Linear regression
g + geom_smooth(method = "lm", se = F) # No confident intervals
g + geom_smooth(method = "lm", formula = y ~ poly(x, 2)) # Quadratic model
g + geom_smooth(method = "lm", formula = y ~ poly(x, 3)) # Cubic model
g + geom_smooth(method = "loess") #Locally estimated scatterplot smoothing

f1 <- function(x){
  y <- (0.0001*x^3) + (0.19*x^2) - 1.1
  return(y)
}
g + geom_function(fun = f1) # Add curve of a function

#### Drawing ####
g + geom_segment(aes(x = 1,y =10, xend = 2, yend =15), col = "orange") # Line
g + geom_curve(aes(x = 1,y =10, xend = 2, yend =15), col = "red", curvature = -1.2) # Curve
g + geom_rect(aes(xmin = 1,ymin =10, xmax =2, ymax =15), fill = NA, col = "blue") # Box/Rectangle

# Draw polygons
ap <- data.frame(x = c(1,2,3,1), y = c(30,20,25,30), id = rep("1",4))
g + geom_polygon(data = ap, aes(x = x, y = y, group = id), fill = "green", col = "black")

#### Split plot with ‘facet’ ####
?iris
g <- ggplot()+
  geom_point(data = iris, aes(x = Sepal.Length, y = Petal.Length, col = Species)) +
  theme_bw()
print(g)

g + facet_grid(rows = vars(Species))
g + facet_grid(cols = vars(Species))
g + facet_wrap(vars(Species), nrow = 2)
g + facet_wrap(vars(Species), ncol = 1)

#### Combine multiple plots ####
# install.package("ggpubr")
library(ggpubr)
g1 <- ggplot()+
  geom_point(data = iris, aes(x = Sepal.Length, y = Petal.Length, col = Species)) +
  theme_bw()

rows <- sample(nrow(iris),size = 97, replace = F)
IRIS <- iris[rows,]
aIRIS <- data.frame(table(IRIS$Species))
print(aIRIS)
g2 <- ggplot(aIRIS)+
  geom_bar(aes(x = Var1, y = Freq, fill = Var1), stat = "identity") + 
  theme_classic()

ndat <- data.frame(x = seq(1,10,0.1))
ndat$y <- pi*ndat$x - exp(1) + rnorm(n = nrow(ndat), mean = 1, sd = 5)
g3 <- ggplot(ndat, aes(x = x, y = y))+
  geom_point() + theme_bw() 

gall <- ggarrange(g1, g2, g3,
          labels = c("A", "B", "C"),
          ncol = 2, nrow = 2)
ggsave(filename = "Plots/Combine.jpeg",gall)
