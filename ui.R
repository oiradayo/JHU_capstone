library(NLP)
library(tm)
library(stringr)
library(dplyr)
library(shiny)
library(markdown)

shinyUI(navbarPage("Final Project",
                   tabPanel("About",
                            mainPanel(
                              img(src = "./headers.png"),
                              includeMarkdown("about.md")
                            )
                   ),
                   tabPanel("Next Word Predictor",
                            HTML("<strong>Author: Catalina Barco-Castillo </strong>"),
                            br(),
                            HTML("<strong>Date: May 5th 2021 </strong>"),
                            br(),
                            img(src = "./headers.png"),
                            # Sidebar
                            sidebarLayout(
                                sidebarPanel(
                                    helpText("Enter a sentence without the last word you want to know"),
                                    textInput("inputString", "Write your incomplete sentence here",value = ""),
                                    br(),
                                    br(),
                                    br(),
                                    br()
                                ),
                                mainPanel(
                                  h2("Your sentence"),
                                  tags$style(type='text/css', '#text1 {background-color: rgba(255,255,0,0.40); color: blue;}'), 
                                  textOutput('text1'),
                                  br(),  
                                  h2("Next Word"),
                                  textOutput("prediction"),   
                                )
                            )
                            
                   )
)
)
