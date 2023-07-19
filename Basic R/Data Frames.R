#create a data frame

Data_Frame <- data.frame(
  Tranning = c("Strength", "Stamina", "Others"),
  Pulse = c(100, 150, 160),
  Duration = c(45, 40, 38)
)
Data_Frame
#summarize the data frame
summary(Data_Frame)

#Data frame structure
str(Data_Frame)

#Access items
f1 <- data.frame(Data_Frame$Tranning, Data_Frame$Pulse)
f1

#add rows to the data frame
newrow <- rbind(Data_Frame, c("Body", 120, 105))
newrow

#add column to the data frame
newCol <- cbind(Data_Frame, Steps =  c(200,210,220))
newCol

#remove rows and column 

newDataFrame <- Data_Frame[-c(1), -c(1)]
newDataFrame


length(Data_Frame)
