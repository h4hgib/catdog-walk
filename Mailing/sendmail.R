
dyn.load('/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home/jre/lib/server/libjvm.dylib')
library(rJava)
library(mailR)
library(knitr)
ReportName = "Next-dog-walk"
next_date = as.POSIXct("2017-11-25 10:00:00")

list_of_pictures <- list.files(pattern ="*.jpg")
place = "AINF shelter in La Linea"
rmarkdown::render(paste0(ReportName, ".Rmd", sep=""), params = list(
  date = next_date,
  picture = sample(list_of_pictures,1)
))

send.mail(from = "catdoghack@gmail.com",
          to = c("Recipient 1 <catdoghack@gmail.com>"),
          #cc = c("CC Recipient <cc.recipient@gmail.com>"),
          bcc = c("Iza <izza.jaworska@gmail.com>", 
                  "Gareth <gareth.netto@gmail.com>", 
                  "Lucy <loopyloosy@gmail.com>",
                  "Shirley <shirleya069@googlemail.com>"),
          subject = "Next Dog Walk",
          body = paste(ReportName, ".html", sep = ""),
          html = TRUE,
          inline = TRUE,
          smtp = list(host.name = "smtp.gmail.com", port = 465,
                      user.name = "catdoghack", passwd = "catdoghac", ssl = TRUE),
          authenticate = TRUE,
          send = TRUE)

send.mail(from = "catdoghack@gmail.com",
          to = c("Recipient 1 <catdoghack@gmail.com>"),
          #cc = c("CC Recipient <cc.recipient@gmail.com>"),
          bcc = c("Iza <izza.jaworska@gmail.com>"),
          subject = "Test4",
          body = paste(ReportName, ".html", sep = ""),
          html = TRUE,
          inline = TRUE,
          smtp = list(host.name = "smtp.gmail.com", port = 465,
                      user.name = "catdoghack", passwd = "catdoghac", ssl = TRUE),
          authenticate = TRUE,
          send = TRUE)


x = as.Date(paste0(year(Sys.Date()), week(Sys.Date()) + ifelse(wday(Sys.Date())==7,0,1), 6), format =  "%Y%U%u")
as.POSIXct(x, tz = "CEST") + + 10*60*60

install.packages("lubridate")
library(lubridate)
x2 <- strftime(ymd_hm(paste(as.Date(paste0(year(Sys.Date()), week(Sys.Date())
                                             + ifelse(wday(Sys.Date())==7,0,1), 6), format =  "%Y%U%u"),
                              "10:00"), tz = ""), format="%Y-%m-%d %H:%M") 
source("mailsender.R")



mail(bcc=c("izza.jaworska@gmail.com"))

