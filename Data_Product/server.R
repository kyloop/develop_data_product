library(shiny)
data(mtcars)

shinyServer(function(input,output) {
        
        output$t1<-DT::renderDataTable({
                data1<-mtcars[,c(1,2,4,6,9)]
                DT::datatable(
                        data1,
                        options=list(pageLength=10),
                        filter = 'top',
                        colnames = c('vehicle model'=1,
                                     'mile/gal'=2,
                                     'number of cylinder'=3,
                                     'horsepower'=4,
                                     'weight(1000lb)'=5,
                                     'Auto=0 / Manual=1'=6))
                })
        
})