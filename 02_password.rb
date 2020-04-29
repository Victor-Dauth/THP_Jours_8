def signup
  puts "quel sera le mots de passe du jours Mon Seigneur ?"
  print ">"
  pass_word = gets.chomp
  return pass_word
end

def login (pass_word)
  puts "Qui est tu jeune inconu ? A tu le mots de passe ?"
  try_pass_word = gets.chomp

  while try_pass_word != pass_word
    puts "Non l'ami c'est pas ça ... Si t'as pas le mots de passe tu ne rentre pas"
    try_pass_word = gets.chomp
  end

end

def welcome_screen

  puts "C'est bien ça. Voila la chambre des secrets des Felix Gaudé"
  puts "Dernier mail envoyé à Charles :"
  puts "C'est tous des naze cette année !!!!"
end

def perform

  pass_word = signup
  login (pass_word)
  welcome_screen

end

perform