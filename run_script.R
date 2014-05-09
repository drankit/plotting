#run_script.R
#Russ Robbins
#050914

source("read_and_clean_data.R")
source("plot1.R")
source("plot2.R")
source("plot3.R")
source("plot4.R")
read_and_clean_data()
plot1(data)
plot2(data)
plot3(data)
plot4(data)

