run_analysis <-{ library(dplyr) ##start reading and naming tables
        subject_test<-read.table("./UCI HAR Dataset/test/subject_test.txt")
        activity_test<-read.table("./UCI HAR Dataset/test/y_test.txt")
        test_data<-read.table("./UCI HAR Dataset/test/X_test.txt")
        subject_train<-read.table("./UCI HAR Dataset/train/subject_train.txt")
        activity_train<-read.table("./UCI HAR Dataset/train/y_train.txt")
        train_data<-read.table("./UCI HAR Dataset/train/X_train.txt")
        variable.name<-as.list(read.table("./UCI HAR Dataset/features.txt"))
        ## 1- Merges the training and the test sets to create one data set.
                ##First, combine test and train variables
                test<-cbind(subject_test, activity_test, test_data)
                train<-cbind(subject_train, activity_train, train_data)
                ##Then combine test and train
        final<-rbind(test, train)
                ##1.4 Labels the data set with descriptive variable names ()
           names(final)<-c("id", "activity", c(variable.name$V2))
        ## 2- Extracts only the measurements on the mean and standard deviation for each measurement (each measurement in x, y and z).
                mean<-grep("mean()", names(final), value = TRUE)
                standart<-grep("std()", names(final), value = TRUE)
        final2<- select(final, id, activity, all_of(mean), all_of(standart))
        ## 3- Uses descriptive activity names to name the activities in the data set.
        final2<-mutate(final2, activity=recode(final2$activity, '1' ="walking", '2'="upstairs", '3'="downstairs", '4'="sitting", '5'="standing", '6'="laying"))
        ## 4- Appropriately labels the data set with descriptive variable names (done for everything since ##1.4)
        ##5 From the data set in step 4, creates a second, independent tidy data set 
        ## with the average of each variable for each activity and each subject. (meaning i must find the average of x,y and z for each variable)
        final2 %>%
        group_by(id, activity) %>%
        summarise_all(funs(mean(.,))) %>%
        View()
}