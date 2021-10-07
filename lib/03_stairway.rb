def welcome
    puts "Bienvenue dans la stairway"
    puts "règles"
    puts ""
    puts "tu démarre tout en bas et ton objectif consiste à monter à la dixième marche"
    puts "-5 et 6 te font monter une marche"
    puts "-1 te fait descendre une marche"
    puts "-2, 3 et 4 te font stagner sur ta marche"
end

def play_dice
    result = rand(1..6)
    puts "tu as fait #{result}"
    return result 
end

def move_step(result)
    if result == 5 || result == 6
        puts "tu montes d'une marche"
        step = 1
        return step
    elsif result == 1
        puts "Tu descend d'une marche"
        step = -1
        return step
    else 
        puts "Tu attends"
        step = 0
        return step
    end
end

def victory_conditions
    player_step = 1
    turn = 0
    while player_step < 10
        result = play_dice
        step = move_step(result)
        player_step = player_step + step
        if player_step < 0
            player_step = 1
            puts "Tu es tout en bas"
            turn += 1
        else
            puts "Tu est sur la marche #{player_step}"
            turn += 1
        end 
    end
    puts "Bien joué petit fdp!! "
    puts "Le tout en tour #{turn}"
    return turn
end

def perform
    welcome 
    victory_conditions
end

def average_finish_time
    nb_turn = 0
    1000.times do
        perform
        turn = victory_conditions
        nb_turn += turn
        puts "La moyenne est de #{nb_turn / 1000}"
    end
end

average_finish_time