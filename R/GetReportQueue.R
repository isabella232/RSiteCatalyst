#getReportQueue - See what reports are in the queue
#Not sure if this should be public or private function


GetReportQueue <- function() {

json <-postRequest("Report.GetReportQueue")

if(json$status == 200) {
result <- content(json)
} else {
  return(jsonResponseError(json$status))
}

if(length(result) ==0) {
  return(print("There are no reports in the Report Queue"))
} else {
return(result)
}

} #End function bracket