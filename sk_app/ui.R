## Capstone: sk_app
## NLP

library(shiny)
library(markdown)

## SHINY UI
shinyUI(
  fluidPage(
    titlePanel("Data Science Capstone (Using NLP to predict next word)"),
    sidebarLayout(
      sidebarPanel(
       
        textAreaInput("inputText", "Enter text here",value = "",
                      width = '100%', height = '150%'),
        hr(),
        helpText("Once the text is entered, the next predicted word will be displayed. You must enter partial sentence to predict the next word"),
        hr()
      ),
      mainPanel(
        
        img(src = 'coursera_logo.png', height = 122, width = 500),
        
        h2("Predicted word is below:"),
        verbatimTextOutput("prediction"),
        strong("Test/Sentence entered:"),
        strong(code(textOutput('sentence1'))),
        br(),
        strong("Search at N-grams to get next word"),
        strong(code(textOutput('sentence2'))),
        hr(),
        img(src = 'log.png',align = "center"),
        hr()
      )
    )
  )
)

