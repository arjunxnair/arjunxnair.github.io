library(shiny)
library(shinydashboard)
library(dashboardthemes)

dashHeader<- dashboardHeader(
  #title = tags$b('arjunxnair'),
  title = tags$a(href='https://arjunxnair.github.io/',
                  tags$img(src='arjunxnair.png',height='25',width='100')),
  titleWidth = 251,
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
  width = 251,
  tags$div(
    HTML('<script src="https://platform.linkedin.com/badges/js/profile.js" async defer type="text/javascript"></script>
         <div class="badge-base LI-profile-badge" data-locale="en_US" data-size="medium" data-theme="dark" data-type="VERTICAL" data-vanity="arjunxnair" data-version="v1"><a class="badge-base__link LI-simple-link" href="https://au.linkedin.com/in/arjunxnair?trk=profile-badge"></a></div>
         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
         <i class="fa fa-phone-square"></i> <a href="tel:61470304652">+61 470 304 652</a>
         <br>
         <i class="fa fa-envelope"></i> <a href="mailto:arjun.x.nair@outlook.com">arjun.x.nair@outlook.com</a>
')
  )
)

source('summary_ui.R')
source('education_ui.R')
source('workex_ui.R')
source('theme.R')

ui <- dashboardPage(
  dashHeader,
  dashSidebar,
  dashboardBody(
    customTheme,
    tabsetPanel(
      summary_ui,
      education_ui,
      workex_ui
    )
  )
)
