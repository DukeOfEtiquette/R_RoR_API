cat("Hello world!")
test <- c(5,10,15)

# set the url for download
url<-"https://archive.ics.uci.edu/ml/machine-learning-databases/iris/iris.data"
# set the filename and directory to download into
filename<-"./lib/assets/data/iris.csv"
# Download the file
download.file(url=url, destfile = filename, method ="curl")
# Read the file into the R environment
iris_filedata<-read.csv(file = filename,header = FALSE,sep = ",")
# Assigning meaningful column names
colnames(iris_filedata)<-c("Sepal.Length","Sepal.Width","Petal.Length","Petal.Width","Species")

