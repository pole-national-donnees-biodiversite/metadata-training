library(shiny)

runExReactive <- function(){
  inlineStyle = "display: inline-block;vertical-align:top;"
  
  ui <- fluidPage(
    # reactive
    fluidRow(
      h2("Reactive return"),
      div(
        actionButton("button_1","Click me!"),
        textOutput("return_1"),
        style= inlineStyle
      )
    ),
    # observe
    fluidRow(
      h2("Observe return"),
      div(
        actionButton("button_2","No! Me!"),
        textOutput("return_2"),
        style= inlineStyle
      )
    ),
    # eventReactive
    fluidRow(
      h2("EventReactive return"),
      div(
        actionButton("button_3","What about me?"),
        textOutput("return_3"),
        style= inlineStyle
      )
    ),
    # observeEvent
    fluidRow(
      h2("ObserveEvent return"),
      div(
        actionButton("button_4","And me?"),
        textOutput("return_4"),
        style= inlineStyle
      )
    ),
    style = "margin: 10px"
  )
  
  server <- function(input, output, session){
    onSessionEnded(function() {stopApp()}) # petite chose utile 
    
    # reactive
    return_1 <- reactive({ input$button_1 }) # `return_1` est une fonction !
    output$return_1 <- renderText({
      paste("You have clicked me", return_1(), "times.")
    })
      
    # observe
    observe({
      return_2 <- paste("You have clicked me", input$button_2, "times.")
      output$return_2 <- renderText(return_2)
    })
    
    # eventReactive
    return_3 <- eventReactive(input$button_3, { input$button_3 })
    output$return_3 <- renderText({
      paste("You have clicked me", return_3(), "times.")
    })
    
    # observeEvent
    observeEvent(input$button_4, {
      return_4 <- paste("You have clicked me", input$button_4, "times.")
      output$return_4 <- renderText(return_4)
    })
    
  }
  
  shinyApp(ui, server, options = list("launch.browser" = TRUE))
}
