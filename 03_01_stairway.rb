def dice
  puts "appuis sur entrer pour lancer le dés"
  gets.chomp
  value = rand(6) + 1
  if value == 1
    puts "Aie c'est la catastrophe tu as fait un #{value}"
  elsif value > 1 && value < 5
    puts "C'est pas avec un #{value} que tu vas avancer"
  else
    puts "Oui c'est bien, tu as fait un #{value}" 
  end
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


def speak(box)
  puts "Tu es maintenant case #{box}"
end


def perform
  puts "appuis sur entrer pour lancer la partie !"
  gets.chomp

  box = 0

  while box<10
    value=dice
    box=move(value,box)
    speak(box)
  end

  puts "Génial tu es arriver en haut !!!!"
  puts "Belle partie"
end

perform