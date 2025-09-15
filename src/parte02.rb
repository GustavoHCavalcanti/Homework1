class WrongNumberOfPlayersError < StandardError; end
class NoSuchStrategyError < StandardError; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2

  # normaliza estratégias
  p1, p2 = game
  name1, strat1 = p1[0], p1[1].upcase
  name2, strat2 = p2[0], p2[1].upcase

raise NoSuchStrategyError unless %w[R P S].include?(strat1) && %w[R P S].include?(strat2)

  return p1 if strat1 == strat2

  if (strat1 == "R" && strat2 == "S") ||
     (strat1 == "S" && strat2 == "P") ||
     (strat1 == "P" && strat2 == "R")
    p1
  else
    p2
  end
end

#segunda parte do exercício

def rps_tournament_winner(tournament)
  if tournament[0][0].is_a?(String)
    return rps_game_winner(tournament)
  else
    left_winner = rps_tournament_winner(tournament[0])
    right_winner = rps_tournament_winner(tournament[1])
    return rps_game_winner([left_winner, right_winner])
  end
end

tournament = [
  [
    [ ["Kristen", "P"], ["Dave", "S"] ],
    [ ["Richard", "R"], ["Michael", "S"] ]
  ],
  [
    [ ["Allen", "S"], ["Omer", "P"] ],
    [ ["David E.", "R"], ["Richard X.", "P"] ]
  ]
]


