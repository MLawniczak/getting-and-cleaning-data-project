run_analysis <- function() {
    
    ## Read and merge data
    trainSub <- as.data.frame(read.table("UCI HAR Dataset/train/subject_train.txt"))
    trainAct <- as.data.frame(read.table("UCI HAR Dataset/train/Y_train.txt"))
    trainDat <- as.data.frame(read.table("UCI HAR Dataset/train/X_train.txt"))
    traindf <- as.data.frame(cbind(trainSub, trainAct, trainDat))

    testSub <- as.data.frame(read.table("UCI HAR Dataset/test/subject_test.txt"))
    testAct <- as.data.frame(read.table("UCI HAR Dataset/test/Y_test.txt"))
    testDat <- as.data.frame(read.table("UCI HAR Dataset/test/X_test.txt"))
    testdf <- as.data.frame(cbind(testSub, testAct, testDat))
    
    cdata <- as.data.frame(rbind(traindf, testdf))
    
    ## Create new data - eliminate unnecessary columns
    ndata <- data.frame(cdata[1])
    ndata <- data.frame(ndata, cdata[2])
    ndata <- data.frame(ndata, cdata[3])
    ndata <- data.frame(ndata, cdata[4])
    ndata <- data.frame(ndata, cdata[5])
    ndata <- data.frame(ndata, cdata[6])
    ndata <- data.frame(ndata, cdata[7])
    ndata <- data.frame(ndata, cdata[8])
    ndata <- data.frame(ndata, cdata[43])
    ndata <- data.frame(ndata, cdata[44])
    ndata <- data.frame(ndata, cdata[45])
    ndata <- data.frame(ndata, cdata[46])
    ndata <- data.frame(ndata, cdata[47])
    ndata <- data.frame(ndata, cdata[48])
    ndata <- data.frame(ndata, cdata[83])
    ndata <- data.frame(ndata, cdata[84])
    ndata <- data.frame(ndata, cdata[85])
    ndata <- data.frame(ndata, cdata[86])
    ndata <- data.frame(ndata, cdata[87])
    ndata <- data.frame(ndata, cdata[88])
    ndata <- data.frame(ndata, cdata[123])
    ndata <- data.frame(ndata, cdata[124])
    ndata <- data.frame(ndata, cdata[125])
    ndata <- data.frame(ndata, cdata[126])
    ndata <- data.frame(ndata, cdata[127])
    ndata <- data.frame(ndata, cdata[128])
    ndata <- data.frame(ndata, cdata[163])
    ndata <- data.frame(ndata, cdata[164])
    ndata <- data.frame(ndata, cdata[165])
    ndata <- data.frame(ndata, cdata[166])
    ndata <- data.frame(ndata, cdata[167])
    ndata <- data.frame(ndata, cdata[168])
    ndata <- data.frame(ndata, cdata[203])
    ndata <- data.frame(ndata, cdata[204])
    ndata <- data.frame(ndata, cdata[216])
    ndata <- data.frame(ndata, cdata[217])
    ndata <- data.frame(ndata, cdata[229])
    ndata <- data.frame(ndata, cdata[230])
    ndata <- data.frame(ndata, cdata[242])
    ndata <- data.frame(ndata, cdata[243])
    ndata <- data.frame(ndata, cdata[255])
    ndata <- data.frame(ndata, cdata[256])
    ndata <- data.frame(ndata, cdata[268])
    ndata <- data.frame(ndata, cdata[269])
    ndata <- data.frame(ndata, cdata[270])
    ndata <- data.frame(ndata, cdata[271])
    ndata <- data.frame(ndata, cdata[272])
    ndata <- data.frame(ndata, cdata[273])
    ndata <- data.frame(ndata, cdata[347])
    ndata <- data.frame(ndata, cdata[348])
    ndata <- data.frame(ndata, cdata[349])
    ndata <- data.frame(ndata, cdata[350])
    ndata <- data.frame(ndata, cdata[351])
    ndata <- data.frame(ndata, cdata[352])
    ndata <- data.frame(ndata, cdata[426])
    ndata <- data.frame(ndata, cdata[427])
    ndata <- data.frame(ndata, cdata[428])
    ndata <- data.frame(ndata, cdata[429])
    ndata <- data.frame(ndata, cdata[430])
    ndata <- data.frame(ndata, cdata[431])
    ndata <- data.frame(ndata, cdata[505])
    ndata <- data.frame(ndata, cdata[506])
    ndata <- data.frame(ndata, cdata[518])
    ndata <- data.frame(ndata, cdata[519])
    ndata <- data.frame(ndata, cdata[531])
    ndata <- data.frame(ndata, cdata[532])
    ndata <- data.frame(ndata, cdata[544])
    ndata <- data.frame(ndata, cdata[545])
        
    ## Create new column names
    names(ndata) <- c("Subject", "Activity", "tBodyAccelerometerMeanX", "tBodyAccelerometerMeanY",
                      "tBodyAccelerometerMeanZ", "tBodyAccelerometerStdX", "tBodyAccelerometerStdY", 
                      "tBodyAccelerometerStdZ", "tGravityAccelerometerMeanX", "tGravityAccelerometerMeanY",
                      "tGravityAccelerometerMeanZ", "tGravityAccelerometerStdX", "tGravityAccelerometerStdY",
                      "tGravityAccelerometerStdZ", "tBodyAccelerometerJerkMeanX", "tBodyAccelerometerJerkMeanY",
                      "tBodyAccelerometerJerkMeanZ", "tBodyAcceleromoterJerkStdX", "tBodyAcceleromoterJerkStdY",
                      "tBodyAcceleromoterJerkStdZ", "tBodyGyroscopeMeanX", "tBodyGyroscopeMeanY",
                      "tBodyGyroscopeMeanZ", "tBodyGyroscopeStdX", "tBodyGyroscopeStdY", "tBodyGyroscopeStdZ",
                      "tBodyGyroscopeJerkMeanX", "tBodyGyroscopeJerkMeanY", "tBodyGyroscopeJerkMeanZ",
                      "tBodyGyroscopeJerkStdX", "tBodyGyroscopeJerkStdY", "tBodyGyroscopeJerkStdZ", 
                      "tBodyAccelerometerMagnitudeMean", "tBodyAccelerometerMagnitudeStd",
                      "tGravityAccelerometerMagnitudeMean", "tGravityAccelerometerMagnitudeStd", 
                      "tBodyAccelerometerJerkMagnitudeMean", "tBodyAccelerometerJerkMagnitudeStd",
                      "tBodyGyroscopeMagnitudeMean", "tBodyGyroscopeMagnitudeStd", 
                      "tBodyGyroscopeJerkMagnitudeMean", "tBodyGyroscopeJerkMagnitudeStd",
                      "fBodyAccelerometerMeanX", "fBodyAccelerometerMeanY", "fBodyAccelerometerMeanZ",
                      "fBodyAccelerometerStdX", "fBodyAccelerometerStdY", "fBodyAccelerometerStdZ",
                      "fBodyAccelerometerJerkMeanX", "fBodyAccelerometerJerkMeanY", 
                      "fBodyAccelerometerJerkMeanZ", "fBodyAcceleromoterJerkStdX",
                      "fBodyAcceleromoterJerkStdY", "fBodyAcceleromoterJerkStdZ", "fBodyGyroscopeMeanX",
                      "fBodyGyroscopeMeanY", "fBodyGyroscopeMeanZ", "fBodyGyroscopeStdX", 
                      "fBodyGyroscopeStdY", "fBodyGyroscopeStdZ", "fBodyAccelerometerMagnitudeMean",
                      "fBodyAccelerometerMagnitudeStd", "fBodyAccelerometerJerkMagnitudeMean",
                      "fBodyAccelerometerJerkMagnitudeStd", "fBodyGyroscopeMagnitudeMean", 
                      "fBodyGyroscopeMagnitudeStd", "fBodyGyroscopeJerkMagnitudeMean",
                      "fBodyGyroscopeJerkMagnitudeStd")
    
   
    ## Average the variables by Subject and Activity
    adata <- aggregate(ndata, by=list(ndata$Subject, ndata$Activity), FUN=mean)
    
    ##Change Activity Values
    adata$Activity[adata$Activity == 1] <- "WALKING"
    adata$Activity[adata$Activity == 2] <- "WALKING_UPSTAIRS"
    adata$Activity[adata$Activity == 3] <- "WALKING_DOWNSTAIRS"
    adata$Activity[adata$Activity == 4] <- "SITTING"
    adata$Activity[adata$Activity == 5] <- "STANDING"
    adata$Activity[adata$Activity == 6] <- "LAYING"
    
    ##Write tidy dataset
    write.table(adata[3:70], file="tidy_data_set.txt", row.names = FALSE)
    
}