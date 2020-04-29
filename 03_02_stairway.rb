def dice
  value = rand(6) + 1
  return value
end


def move(value,box)
  if value == 1
    if box <=0
    else
      box = box -1
    end
  elsif value > 1 && value < 5
  else
    box = box + 1 
  end
  return box
end

def hundred_game
  arrays = []

  100.times do 
    box = 0
    turns_number = 0

    while box<10
      value=dice
      box=move(value,box)
      turns_number = turns_number + 1
    end

    arrays << turns_number

  end

  return arrays

end


def average_finish_time(arrays)
  nb = arrays.length
  sum = 0

  nb.times do |nb|
    sum = sum + arrays[nb]
  end

  average = sum / nb

  return average
end


def perform
  puts "Nous allons determiner le nombre de tour moyen pour arriver à l'étage n°10 sur 100 parties"
  puts "Appuis sur entrer pour lancer l'expérience!!!"
  gets.chomp

  arrays = hundred_game

  average = average_finish_time(arrays)

  puts "Il a fallu en moyen #{average} tours pour completer le jeu"
  puts "Merci pour cette expérience"
  print arrays
  puts ""
end

perform