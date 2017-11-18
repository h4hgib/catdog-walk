
dyn.load('/Library/Java/JavaVirtualMachines/jdk1.8.0_144.jdk/Contents/Home/jre/lib/server/libjvm.dylib')
library(rJava)
library(mailR)
library(knitr)
ReportName = "test1"
rmarkdown::render(paste0(ReportName, ".Rmd", sep=""))

send.mail(from = "catdoghack@gmail.com",
          to = c("Recipient 1 <catdoghack@gmail.com>"),
          #cc = c("CC Recipient <cc.recipient@gmail.com>"),
          bcc = c("Iza <izza.jaworska@gmail.com>"),
          subject = "Test4",
          body = "test1.html",
          html = TRUE,
          inline = TRUE,
          smtp = list(host.name = "smtp.gmail.com", port = 465,
                      user.name = "catdoghack", passwd = "catdoghac", ssl = TRUE),
          authenticate = TRUE,
          send = TRUE)
