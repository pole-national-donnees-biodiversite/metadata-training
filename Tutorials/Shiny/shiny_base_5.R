library(shiny)

# Débrief:

# Votre application de calcul sommaire a fonctionné.
# Sauf peut-être si vous avez tenté les points bonus. En effet, avec un seul 
# type d'input on arrive à un `textInput`. Il en faut 3, 2 pour les chiffres et
# 1 pour l'opération. Quelques manipulations du côté serveur permettent de 
# parvenir à permettre les calculs sommaires. De même, avec un seul `textInput`,
# l'emploi d'expressions régulières nous fait parvenir à nos fins.

# Mais que se passe-t-il si l'utilisateur rentre autre chose que des chiffres? 
# Dans de simples applications comme cela, rien. Mais une telle erreur peut être
# la cause de problèmes d'envergure dans de plus larges applications. 

# Mais nous verrons tout cela une prochaine fois !