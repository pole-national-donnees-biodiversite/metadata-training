# Remplissons l'application ----
# Dans notre template d'application, il va falloir intégrer plusieurs éléments:
# 1 - ce pour quoi notre application est conçue
# 2 - de quoi guider l'utilisateur
# 3 - et tout ça de manière ergonomique

# Shiny facilite le 3e point, commençons par les 2 premiers

# 1 - Rendre une méthode visuelle et interactive (1/2) ----

# Le premier point est évidemment le plus important: réussir à produire une 
# méthode et la rendre interactive. Pour la rendre interactive, voici une liste
# (non exhaustive) de structures de saisie par l'utilisateur et de structures de
# rendus par le serveur.
# Faites votre choix parmi celles qui vous intéressent

# Gestion de texte ----
?textInput
(?passwordInput)
?renderText
?textOutput
?verbatimTextOutput

# Gestion de chiffres ----
?numericInput
?sliderInput

# Gestion de choix ----
?selectInput
?checkboxGroupInput
(?checkboxInput)
?radioButtons

# Gestion de fichiers et tables ----
?fileInput
?renderTable # les fichiers sont soumis via un data.frame
?tableOutput

# Gestion d'actions ----
?actionButton
?actionLink
?submitButton

# Affichage de texte ----
"écrire directement ce qu'on veut afficher"
?tags # une liste contenant des balises HTML intéressantes comme:
h1("Titre principal")
h2("Titre de chapitre")
h3("Titre de parties")
# h4+ sous-parties successives
p("Un paragraphe bien mis en forme")
strong("Un texte en gras")
i("Un texte en italique")

# Et pour ceux qui s'y connaissent un peu en programmation web:
div(...) # permet de créer une subdivision du code
?HTML # interprète une chaîne de characters comme un code HTML
  # et les attributs HTML s'écrivent comme des arguments R

# NOTA: pour chaque *Input, la documentation stipule, dans la section Value, le
# format sous lequel est renvoyé l'input.

# N'hésitez pas à vous inspirer des exemples fournis pour insérer une de ces 
# structures dans votre application. Pour l'instant, contentons-nous de faire
# s'afficher à l'écran ce que l'utilisateur vient de saisir. Même trivial, cet
# exercice est crucial pour vérifier que `ui` et `server` se répondent.

library(shiny)

ui <- fluidPage(
  # input structure
  # display output structure
)

server <- function(input, output, session) {
  # output structure
}

shinyApp(ui, server)

# Si votre application fonctionne, félicitations ! Vous maîtrisez les inputs !

# SUITE ----
# Quand vous êtes prêts, nous pourrons procéder à la suite:
rstudioapi::navigateToFile("shiny_base_4.R")

