def signup
    puts "Enregistrez votre mot de passe"
    mdp = gets.chomp
    return mdp
end


def login(mdp)
    puts "Entrez votre mot de passe !!"
    open_mdp = gets.chomp
    while open_mdp != mdp
        puts "Ce n'est pas le bon mot de passe"
        open_mdp = gets.chomp
    end
    return welcome_screen
end


def welcome_screen
    puts "Bienvenu dans la zone secrète"
    puts "secretN1: les végétariens ne mangent pas de viande"
    puts "secretN2: fichiers corrompu..."
end


def perform
    login(signup)
end

perform