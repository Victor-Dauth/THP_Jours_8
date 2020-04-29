def ask 
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  print "> #{ }"
  number = gets.chomp.to_i
  
  while number < 1 || number > 25
    puts "Désoler mais j'ai besoin d'un valuer ENTIERE entre 1 et 25"
    print "> #{ }"
    number = gets.chomp.to_i
  end

  while number%2==0
    puts "Connard, un loganse paire c'est moche !!! Rentre moi un nombre impaire !!!!!!!!!!!!"
    print "> #{ }"
    number = gets.chomp.to_i
  end

  return number

end

def full_pyramid(number)
  i = 1
  j = number - 1

  number.times do
    
    step_pyramid(i,j)
    puts " "
    i = i+1
    j = j-1
  end

  i = 1
  j = number - 1
  number_2 = number -1

  number_2.times do
    
    step_pyramid(j,i)
    puts " "
    i = i+1
    j = j-1
  end

  return
end

def step_pyramid(i,j)

  k = i - 1

  j.times do 
    print " "
  end

  i.times do
    print "#"
  end

  k.times do
    print "#"
  end

  j.times do 
    print " "
  end

end

def performe
  number = ask
  full_pyramid(number)

end

performe