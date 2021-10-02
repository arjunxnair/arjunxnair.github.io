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

source('summary_ui.R')
source('education_ui.R')
source('workex_ui.R')

ui <- dashboardPage(
  dashHeader,
  dashSidebar,
  dashboardBody(
    tabsetPanel(
      summary_ui,
      education_ui,
      workex_ui
    )
  )
)


# 
# ui <- fluidPage(
#   sidebarLayout(
#     sidebarPanel(
#       width = 3,
#       h2("My Static website"),
#       h3("Internal link example"),
#       a(h4("Birds"),
#         href = "#birds"),
#       hr(),
#       
#       h3("External link example"),
#       a(h4("Wikipedia"),
#         href = "https://en.wikipedia.org/wiki/Main_Page",
#         target = "blank")
#     ),
#     
#     mainPanel(
#       width = 9,
#       
#       h2("Link to a saved sample.html"),
#       p("The url is https://johndoe.github.io/samples/sample.html"),
#       a(h3("Lovely Birds"),
#         href = "https://johndoe.github.io/samples/sample.html",
#         target = "blank"),
#       hr(),
#       
#       h2("Text and image example", id = "birds"),
#       fluidRow(
#         column(
#           7,
#           includeMarkdown("markdown/birds.Rmd")
#         ),
#         column(
#           5,
#           img(src = "birds.png", width = "100%")
#         )
#       ),
#     )
#   )
# )