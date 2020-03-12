library(shiny)

ui <- fluidPage(
  actionButton("1","1"),
  actionButton("2","2"),
  verbatimTextOutput("3")
)

server <- function(input, output, session) {
  a = reactiveValues(b = 0)
  # a = list(b = 0)
  observeEvent(input$`1`, {
      a$b <- a$b+1
  })
  observeEvent(input$`2`, {
      a$b <- a$b+2
  })
  output$`3` <- renderText(a$b)
}

shinyApp(ui, server)
