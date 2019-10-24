# Remplissons l'application ----

# 1 - Rendre une méthode visuelle et interactive (2/2) ----

# Maintenant que vous maîtrisez les inputs, il va falloir s'atteler à la partie
# `server`. Celle-ci contient le principe actif de votre application, sa 
# méthode. 

# reactive, eventReactive, observe, observeEvent, ... lequel utiliser?




?reactive()
# renvoie dynamiquement la valeur calculée en son sein.
# aucune variable modifiée ne le restera au-delà.

?observe()
# renvoie ne renvoie pas de valeur utilisable
# toutes les modifications faites en interne subsisteront

?eventReactive
?observeEvent
# comme `reactive` et `observe` mais ne sont déclenchés que lors de l'occurrence
# d'un événement, rentré en premier argument

# Un bon exemple vaut mieux qu'un long discours:
source(".ex-reactive.R"); runExReactive()

# Vous avez donc 4 manières de ... réaliser la même chose. Extra !
# Leurs spécificités interviennent dans des cas plus précis visant à contrôler
# les inputs de l'utilisateur.
# La principale différence survient dans la notion d'"événements" avec
# `eventReactive` et `observeEvent`. Le premier argument de ces fonctions est 
# l'ID d'une structure d'input. Lorsque l'utilisateur agit sur cet input, la 
# structure événementielle correspondante va réagir.

# A présent, faisons se croiser les effluv ... euh, les effluves.
# L'exercice proposé est de permettre à l'utilisateur de soumettre 2 chiffres
# puis de lui permettre de soustraire, additionner, diviser ou multiplier le
# premier au second et d'afficher le résultat.
# Points bonus:
# +1: ne pas utiliser d'`actionButton` pour lancer le calcul (soit, proposer un
# calcul en temps réel)
# +2: ne pas utiliser plus d'un type d'input
# +5: ne pas utiliser plus d'un champ d'input

# Si votre application fonctionne, félicitations ! Vous maîtrisez les inputs !
# Si vous avez tenté les points bonus et que ça ne fonctionne pas toujours, 
# alors Félicitations quand même. Mais passons à la suite pour voir pourquoi ;)

# SUITE ----
# Quand vous êtes prêts, nous pourrons procéder à la suite:
rstudioapi::navigateToFile("shiny_base_5.R")

