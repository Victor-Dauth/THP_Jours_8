def ask 
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  print "> #{ }"
  number = gets.chomp.to_i
  
  while number < 1 || number > 25
    puts "Désoler mais j'ai besoin d'un valuer ENTIERE entre 1 et 25"
    print "> #{ }"
    number = gets.chomp.to_i
  end

  return number

end

def half_pyramid (number)
  i = 1
  j = number-1

  puts "Voici la pyramide"
  number.times do
    j.times do 
      print " "
    end
    i.times do
      print "#"
    end
    puts ""
    j=j-1
    i=i+1
  end

end

def performe
  number = ask
  half_pyramid (number)

end

performe
