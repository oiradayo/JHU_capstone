#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(NLP)
library(tm)
library(stringr)
library(dplyr)
library(shiny)
library(markdown)

shinyUI(navbarPage("Final Project",
                   tabPanel("Next Word Predictor",
                            HTML("<strong>Author: daisuke ohnuki </strong>"),
                            br(),
                            HTML("<strong>Date: June 29, 2021 </strong>"),
                            br(),
                            # Sidebar
                            sidebarLayout(
                              sidebarPanel(
                                helpText("Enter words"),
                                textInput("inputString", "Type some words",value = ""),
                                br(),
                                br(),
                                br(),
                                br()
                              ),
                              mainPanel(
                                h2("Your words"),
                                tags$style(type='text/css', '#text1 {background-color: rgba(255,255,0,0.40); color: green;}'), 
                                textOutput('text1'),
                                br(),  
                                h2("Next Word"),
                                textOutput("prediction"),   
                              )
                            )
                            
                   )
)
)