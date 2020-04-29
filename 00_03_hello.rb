def ask_first_name
  puts "Quel est ton prenom l'ami ?"
  name = gets.chomp
  return name
end

def say_hello (first_name = "vico")
  puts "Hello #{first_name}"
end

def performe
  f_name = ask_first_name
  say_hello (f_name)
end

performe