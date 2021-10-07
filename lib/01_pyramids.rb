def half_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étage veux-tu ?"
    nb = gets.chomp.to_i
    brick = "#"
    space = " "
    puts ">#{nb}"

    # Bloque le choix du nombre entre 1 et 25
    until nb.between?(1, 25) do
        puts "Il me faut un nombre entre 1 et 25 svp"
        nb = gets.chomp.to_i
    end

    space *= nb
    puts "Voici ta pyramide: "
    while nb > 0
        puts space + brick
        space.slice! " "
        brick += "#"
        nb -= 1
    end
end

def full_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étage veux-tu ?"
    nb = gets.chomp.to_i
    brick = "#"
    space = " "
    puts ">#{nb}"

    # Bloque le choix du nombre entre 1 et 25
    until nb.between?(1, 25) do
        puts "Il me faut un nombre entre 1 et 25 svp"
        nb = gets.chomp.to_i
    end

    # Définir l'espace d'origine
    space *= nb
    puts "Voici ta pyramide: "
    while nb > 0
        puts space + brick
        space.slice! " "  #Supprime un espace 
        brick += "##"
        nb -= 1  #Décrémente nb
    end
end


def wtf_pyramid
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étage veux-tu ?"
    nb = gets.chomp.to_i
    brick = "#"
    space = " "
    puts ">#{nb}"

    # Bloque le choix du nombre entre 1 et 25
    until nb.between?(1, 25) && (!nb.even?) do
        puts "Il me faut un nombre entre 1 et 25 et aussi impair svp"
        nb = gets.chomp.to_i
    end

    # Définir l'espace d'origine 
    space *= nb
    
    
    # Pyramide à l'endroit
    puts "Voici ta pyramide: " 
    nb.times do
        puts space + brick
        space.slice! " "  #Supprime un espace 
        brick += "##"
    end

    # Pyramide à l'envers
    brick.slice! "##"
    space += " "
    (nb-1).times do
        brick.slice! "##"
        space += " "
        puts space + brick + space 
    end
end

def perform
    half_pyramid
    full_pyramid
    wtf_pyramid
end

perform