library(shiny)

# Commençons simplement ! ----
# Shiny dispose de plusieurs "apps" exemples que nous pourrons décortiquer.
# Par exemple:

shiny::runExample("01_hello")

# Cette appli est assez simple et on devine assez bien les parties UI et server
# Plus particulier: un affichage en temps réel. 

shiny::runExample("11_timer")

# Vous pouvez vous amuser à explorer l'ensemble des exemples contenus dans Shiny
# via la fonction

shiny::runExample()

# Par convention, nous maintiendrons l'appel à un espace de nom avant tout 
# emploi de fonction:  espacedenom::fonction()

# SUITE ----
# Quand vous êtes prêts, nous pourrons procéder à la suite:
rstudioapi::navigateToFile("shiny_base_2.R")
