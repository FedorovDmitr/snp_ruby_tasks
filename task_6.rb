=begin
Разработать методы для программы Камень-Ножницы-Бумага. Метод rps_game_winner должен принимать на вход массив следующей структуры [ ["player1", "P"], "player2", "S"] ], где P - бумага, S - ножницы, R - камень, и функционировать следующим образом:
• если количество игроков больше 2 необходимо вызывать исключение WrongNumberOfPlayersError;
• если ход игроков отличается от ‘R’, ‘P’ или ‘S’ необходимо вызывать исключение NoSuchStrategyError;
• в иных случаях необходимо вернуть имя и ход победителя, если оба игрока походили одинаково - выигрывает первый игрок. 
=end

class WrongNumberOfPlayersError < StandardError; end 
class NoSuchStrategyError < StandardError; end

def rps_game_winner(array = [["player1", "P"], ["player2", "S"]])
    if array.size != 2
        raise WrongNumberOfPlayersError    
    elsif (/[PSR]/ === array[0][1]) & (/[PSR]/ === array[1][1])
        if array[0][1] == array[1][1]
            return "#{array[0][0]} #{array[0][1]}"
        else
            check = array[0][1] + array[1][1]
            case check
            when "RS", "PR", "SP" 
                return "#{array[0][0]} #{array[0][1]}"
            when "RP", "PS", "SP" 
                return "#{array[1][0]} #{array[1][1]}"
            end
        end
    else 
        raise NoSuchStrategyError  
    end
end


# rps_game_winner([%w[player1 P], %w[player2 S], %w[player3 S]])) # => WrongNumberOfPlayersError 
# rps_game_winner([%w[player1 P], %w[player2 A]])) # => NoSuchStrategyError
# rps_game_winner([%w[player1 P], %w[player2 S]])) # => 'player2 S'
# rps_game_winner([%w[player1 P], %w[player2 P]])) # => 'player1 P'

