library(shiny)
library(dplyr)
library(ggplot2)
library(plotly)
library(shiny)
source("app_server.R")


# Define Pages 
page_one <- tabPanel(
  "Introduction",	
  sidebarLayout(
    mainPanel(
      h2("About This Project:"),
      img("climate change", src= "photo-1.jpg"),
      p("**Climate change** has a major impact on every person's life regardless of ethnicity, race, nationality, age, gender, job etc. 
      In order to prepare for the future, there is a dire need right now for a sense of acknowledgement within populations. 
      Climate change has a lot of moving parts to it and can be daunting to understand so we believe that manipulating data 
      may make it easier for us and others to absorb the individual impact it has on everyone's lives.The data set, 
      ([Daily Temperatures of Major Cities](https://www.kaggle.com/sudalairajkumar/daily-temperature-of-major-cities)), 
      was found on Kaggle and was collected by a data scientist at H2O.ai, an open source software company in Silicon Valley.  
      There are 1,048,575 observations in this data set with eight features: region, country, start, city, month, day, year, and average temperature. 
      This data set will go a long way in determining where the highest changes in temperature occurred and will allow us to measure multiple climate change variables. 
      We will be able to  answer questions such as: Based on current temperature patterns, which cities will be heavily impacted by climate change and global warming in the near future? 
      Have specific countries experienced no or little climate change?
"), 
      h3("About Us:"),
      p("Group Members: Clarissa Gunadharma, Quynh Le, Brenden Lasola" )
    )))

page_two <- tabPanel()
page_three <- tabPanel()
page_four <- tabPanel(
  "Summary Analysis",	
  sidebarLayout(
    mainPanel(
      h2("Major Takeaways"),
      p("Based on the specific climate change data we analyzed, we were able to learn some key takeaways about climate change variables based on average temperatures in certain cities and countries throughout decades, years and months. 
      Although the overall global temperatures may be rising over time, 
      specific countries like Algiers does not experience a significant amount of temperature change even though global warming is occurring. 
      Additionally, when honing into temperature trends in Seattle over the years (e.g from 1995 and 2019), temperatures had more variation in 2019 than it did in 1995. Although the data we’ve analyzed has been focused on temperature, 
      there is a strong correlation that variation in temperatures are aligned with climate change.")
    )))
 
# Define UI 
ui <- navbarPage(
  "Final Deliverable: Climate Change Analysis", 
  page_one,
  page_two, 
  page_three, 
  page_four
)