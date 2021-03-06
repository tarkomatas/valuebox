### developer: Tamas Markó
### email: tamas.marko@myhappydata.com
library(shiny)

valueBox <- function(value, subtitle, icon, color) {
              div(class = "col-lg-3 col-md-6",
                           div(class = "panel panel-primary",
                               div(class = "panel-heading", style = paste0("background-color:", color),
                                   div(class = "row",
                                       div(class = "col-xs-3",
                                           icon(icon, "fa-5x")
                                       ),
                                       div(class = ("col-xs-9 text-right"),
                                           div(style = ("font-size: 56px; font-weight: bold;"),
                                               textOutput(value)
                                           ),
                                           div(subtitle)
                                       )
                                   )
                               ),
                               div(class = "panel-footer",
                                   div(class = "clearfix")
                               )
                           )
              )
}

#-------------------------------------
# SHINY
#-------------------------------------

shinyUI(fluidPage(
  fluidRow(id="main-panel",
     valueBox(value = "mean_mpg",
              subtitle = "mean of mpg",
              icon = "tachometer",
              color = "green")
  )
))
