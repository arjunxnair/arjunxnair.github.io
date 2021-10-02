library(shiny)
library(shinydashboard)


dashHeader<- dashboardHeader(
  title = 'arjunxnair',
  titleWidth = 250,
  dropdownMenu(type = "messages", badgeStatus = "success",
               messageItem("Note",
                           "created by arjunxnair"
              ))
  # tags$li(class = "dropdown",
  #         tags$a(href='https://arjunxnair.github.io/',
  #                tags$img(src='arjunxnair.png',height='40',width='40')
  #         )
  #)
)

dashSidebar<- dashboardSidebar(
  width = 250,
  tags$a(href='https://arjunxnair.github.io/',
         tags$img(src='arjunxnair.png',height='250',width='250')
  )
)

ui <- dashboardPage(
  dashHeader,
  dashSidebar,
  dashboardBody(
    tabItems(
      # First tab content
      tabItem(tabName = "dashboard",
              fluidRow(
                box(plotOutput("plot1", height = 250)),
                
                box(
                  title = "Controls",
                  sliderInput("slider", "Number of observations:", 1, 100, 50)
                )
              )
      ),
      
      # Second tab content
      tabItem(tabName = "widgets",
              h2("Widgets tab content")
      )
    )
  )
)