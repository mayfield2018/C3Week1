## for Quiz of week1, Course3
## Q1
house_file <- read.csv("getdata_data_ss06hid.csv", stringsAsFactors = FALSE)
##col_name <- names(house_file)
val <- filter(house_file, VAL>=24)
num_val <- nrow(val)
##print (num_val)  ##Q1:  53

##Q2
fes_col <- select(house_file, FES)
print (fes_col) ## Q2: Tidy data has one variable per column. 

## Q3. Read rows 18-23 and columns 7-15 into R and assign the result to a variable called dat
gas_file <- read.xlsx("getdata_data_DATA.gov_NGAP.xlsx", 1, header=TRUE)
dat <- gas_file[18:23, 7:15]
my_sum <- sum(dat$Zip*dat$Ext,na.rm=T)
print (my_sum) ## 0

## Q4 

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fdata%2Frestaurants.xml", "q4_dat.xml")
## download successed. 
##my_data <- xmlParse("q4_dat.xml") ## still xml file format
my_xmldataframe <- xmlToDataFrame ("q4_dat.xml")
print(class(my_xmldataframe)) ## printing result is mess
print (names(my_xmldataframe))


mytest <- xmlToDataFrame ("testxml.xml")
print (head(mytest))

my_newxml <- xmlToDataFrame ("q4_dat.xml")
print (head(my_newxml))



