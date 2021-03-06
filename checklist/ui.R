
# This is the user-interface definition of a Shiny web application.
# You can find out more about building applications with Shiny here:
# 
# http://www.rstudio.com/shiny/
#

library(shiny)

shinyUI(pageWithSidebar(
   
  # Application title
  headerPanel("Prototype of Checklist Generator Prototype"),  #?? Prototype needed twice?
  
  # Sidebar with a slider input for number of bins
  sidebarPanel(
#     actionButton("uncheckBtn", "Uncheck All"),
#     actionButton("check", "Check All"),            
     checkboxGroupInput("issuevect", label = NULL, choices = (integrateds = levels(integrateds)), selected = integrateds)
   ),
                                          # formerly issues2 ^
  # Show a text list of indicators
  mainPanel(
    tableOutput("indicatorResults"),
    textInput("requireds", "Required Indicators"),
    textInput("excludeds", "Excluded Indicators"),
    submitButton(text="Calculate Checklist")
#    textOutput("foo"),
#    textOutput("exOut")
#    tags$head(tags$script(src = "message-handler.js"))
      
  )
))

# run with runApp("~/ASI/checklist/shiny")
