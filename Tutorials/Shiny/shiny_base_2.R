library(shiny)

# A nous de jouer ! ----
# Nous allons construire notre propre application pour mettre en pratique les 
# principes élémentaires de Shiny. 

# En premier lieu, il nous faut une structure de code permettant de tester 
# rapidement la construction. Pour cela, commencez à taper:
# "shiny" ... 
# Puis, sélectionner l'option "shinyapp" issue de l'espace de nom {snippet}
# Vous devriez obtenir la structure suivante:

library(shiny)

ui <- fluidPage(

)

server <- function(input, output, session) {

}

shinyApp(ui, server)

# La lancer vous affiche une page vide et ennuyeuse, mais au moins, vous avez
# lancé votre première appli Shiny ! 

# Passons à la suite pour la meubler

# SUITE ----
# Quand vous êtes prêts, nous pourrons procéder à la suite:
rstudioapi::navigateToFile("shiny_base_3.R")

