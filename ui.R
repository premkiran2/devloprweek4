library(shiny)

shinyUI(
  navbarPage("Shiny app",
             tabPanel("examination",
                      fluidPage(
                        titlePanel("It tells the connection between varibles and mileage it goes"),
                        sidebarLayout(
                          sidebarPanel(
                            selectInput("variable", "Variable:",
                                        c("cyc in tot" = "cyl",
                                          "dist (cu.in.)" = "disp",
                                          "Big ghp" = "hp",
                                          "raio ais rearr" = "drat",
                                          "mas (lb/1000)" = "wt",
                                          "1/4 metee tyme" = "qsec",
                                          "V/S" = "vs",
                                          "commu" = "am",
                                          "Rane of geas foward" = "gear",
                                          "Amunt of carurettors" = "carb"
                                        )),
                            
                            checkboxInput("outliers", "Show the otliers of bp", FALSE)
                          ),
                          
                          mainPanel(
                            h3(textOutput("caption")),
                            
                            tabsetPanel(type = "tabs", 
                                        tabPanel("PB", plotOutput("mpgBoxPlot")),
                                        tabPanel("MR", 
                                                 plotOutput("mpgPlot"),
                                                 verbatimTextOutput("fit")
                                        )
                            )
                          )
                        )
                      )
             ),
             tabPanel("charateristics the set of data",
                      
                      h3("Modls Regrssion Projct Couse(Cousera frm )"),
                      helpText("You working at moto trends which collects google data of set of cars they do exploatory analsis",
                               "b/w the vars and mileage. They try to check the best one out of manu and auto for the custo"),
                      h3("suprem"),
                      p("A set off gogle date with 11 observati and 32 vatsbles"),
                      p("I will encourage this type of peer which helps in iincreasind oue way of thnking"),
                      
                      a("https://class.coursera.org/regmods-008")
             ),
             tabPanel("Data with a large spec of vehiles",
                      h2("testsinfg og moter vehiles trens"),
                      hr(),
                      h3("Explanaton"),
                      helpText("google data took the data from magqines ehich was pblished in 1974,",
                               " Includes petrol consuption and 10 facets of vehicle design and efficiency",
                               " for about 32 autmobiles (197o3-4 moels)."),
                      h3("Design"),
                      p("A set off gogle date with 11 observati and 32 vatsbles"),
                      
                      p("  [, a]   pg         milage"),
                      p("  [, s]	 yl	 cys of no."),
                      p("  [, d]	 dsp	 didt (cu.in.)"),
                      p("  [, f]	 p	 Big ghpr"),
                      p("  [, g]	 drt	 raio ais rear"),
                      p("  [, e]	 t	 mas (lb/1000)"),
                      p("  [, w]	 qsetc	 1/4 kmt"),
                      p("  [, c]	 vs	 V/S"),
                      p("  [, 6]	 am	 trans (0 = auto, 1 = mau)"),
                      p("  [,1t]	 ger	 geas fordwarf"),
                      p("  [,ui]	 crb	 crd for gea"),
                      p("It helped me in learning differ thng this day"),
                      
                      h3("ogign"),
                      
                      p("Hen and Veman (19824), regresion Buiding mdels muliple Bietrics  iteractively. , 37, 391sf-4er11.")
             ),
             tabPanel("falling to uor direc in qitpub",
                      a("https://github.com/premkiran2/devloprweek4"),
                      hr(),
                      h4("I like this shining app very much"),
                      h4("This is polepalli prel kiran who crated ths thing"),
                      h4("This took around about five to 6 hours for me complete this thing"),
                      h4("The experience i got from is xcellent and i am interesting din thid type os thing very munch")
                  
             )
  )
)
