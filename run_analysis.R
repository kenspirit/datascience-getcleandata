setwd(".")

# Unzip the Samsung data
# unzip("getdata-projectfiles-UCI HAR Dataset.zip")

GetDataPath <- function(file) {
  paste0("./UCI HAR Dataset", "/", file, collapse = "")
}

keyword.abbr <- c(
  "f",
  "t",
  "Acc",
  "Body",
  "Jerk",
  "Mag",
  "Gyro",
  "Gravity",
  "mean()",
  "std()",
  "meanFreq()",
  "X",
  "Y",
  "Z",
  "gravity",
  "Mean"
)

keyword.name <- c(
  "Fast.Fourier.Transformed",
  "Time.domain",
  "linear.acceleration",
  "Body",
  "Jerk",
  "Euclidean.norm.Magnitude",
  "Gyroscope",
  "Gravity",
  "Mean",
  "Standard.deviation",
  "Mean.frequency",
  "in.X.axis",
  "in.Y.axis",
  "in.Z.axis",
  "Gravity",
  "Mean"
)

feature.readable <- data.frame(keyword.abbr, keyword.name, stringsAsFactors = F)

Beautify <- function(name) {
  SplitByCamelCase <- function(label) {
    if (nchar(label) == 1) {
      label
    } else {
      gsub("([A-Z])", " \\1", label)
    }
  }

  Readabilize <- function(abbrs) {
    Decode <- function(abbr) {
      feature.readable[feature.readable$keyword.abbr == abbr, 2]
    }

    abbrs.v <- strsplit(SplitByCamelCase(abbrs), " ")[[1]]
    abbrs.v <- sapply(abbrs.v, Decode)
    paste(abbrs.v, collapse = ".")
  }

  readable <- gsub("BodyBody", "Body", name) # Remove duplicate Body in name

  if (length(grep("^angle\\(", name)) == 1) {
    variables <- strsplit(gsub("^angle\\(|\\)", "", name), ",")[[1]] # Gets two params of angle exp
    variables <- sapply(variables, Readabilize)

    readable <- paste0("Angle.of.", variables[1], ".and.", variables[2], collapse = "")
  } else {
    variables <- strsplit(readable, "\\-")[[1]] # Split by -
    # Split by camel case
    readable <- sapply(variables, Readabilize)

    readable <- paste(readable, collapse = ".")
  }
  readable
}

GetDataSet <- function(name, feature.name, activity.names) {
  GetData <- function(type, cols) {
    file.path = GetDataPath(paste0(name, "/", type, "_", name, "_Sample.txt"))
    read.table(file.path, stringsAsFactors = F, col.names = cols)
  }

  x.data = GetData("X", feature.name)
  subject.data = GetData("subject", c("Subject"))
  activity.data = GetData("y", c("Activity"))

  # Obtain only the mean & std deviation variables
  features.idx <- grep("mean\\(\\)|std\\(\\)|Mean", feature.name)
  features.retained <- sapply(feature.name[features.idx], Beautify)

  x.data <- x.data[,features.idx]
  names(x.data) <- features.retained

  cbind(subject.data, activity.data, x.data)
}

RunAnalysis <- function() {
  # Obtain feature name list and massage them
  features <- read.table(GetDataPath("features.txt"), stringsAsFactors = F, row.names = 1, col.names = c("id", "name"))

  activity.names <- read.table(GetDataPath("activity_labels.txt"), stringsAsFactors = F, col.names = c("code", "Activity"))

  # Step 1: Merges the training and the test sets to create one data set
  # 1.1 Obtain Train & Test data set
  data.train <- GetDataSet("train", features$name, activity.names)
  data.test <- GetDataSet("test", features$name, activity.names)

  # 1.2 Merge
  data.all <- rbind(data.train, data.test)

  # 2 Produce clean data set for average on each variable
  data.avg <- aggregate(data.all, by = list(data.all$Activity, data.all$Subject), FUN = "mean")

  # 3 Label activity name to data set.  Done after obtaining average value
  data.all <- merge(activity.names, data.all, by.y = "Activity", by.x = "code", all.y = T)
  data.all$code = NULL

  write.csv(data.all, file = "./cleanup_data.csv", row.names = F)

  data.avg <- merge(activity.names, data.avg, by.y = "Activity", by.x = "code", all.y = T)
  data.avg$code = NULL
  data.avg["Group.1"] = NULL
  data.avg["Group.2"] = NULL

  write.csv(data.avg, file = "./average_per_subject_and_activity.csv", row.names = F)
}

RunAnalysis()
