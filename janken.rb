# frozen_string_literal: true

$hands = {
  0 => 'Rock',
  1 => 'Paper',
  2 => 'Scissors'
}

# let the player make input
class Player
  def get_gesture_name(hash, key)
    hash[key]
  end

  def hand
    loop do
      puts 'Enter a number.'
      puts '0: Rock, 1: Paper, 2: Scissors'
      input_hand = gets.chomp.to_i
      if input_hand < 3 && input_hand >= 0
        $player_hand = get_gesture_name($hands, input_hand)
        puts "You entered #{$player_hand}."
        return $player_hand
      else
        puts 'You entered an invalid number. Please choose from 0 to 2'
      end
    end
  end
end

# make opponent input
class Opponent
  def hand
    $opponent_hand = $hands[rand($hands.length)]
    puts "Opponent entered #{$opponent_hand}."
    $opponent_hand
  end
end

# Janken Result Decided
class Janken
  def pon(player_hand, opponent_hand)
    puts "You entered #{player_hand} and Opponent entered #{opponent_hand}"
  end

  def check(player_hand, opponent_hand)
    message = 'Opponent Win'
    if player_hand == 'Rock' && opponent_hand == 'Scissors'
      message = 'You Win'
    elsif player_hand == 'Paper' && opponent_hand == 'Rock'
      message = 'You Win'
    elsif player_hand == 'Scissors' && opponent_hand == 'Paper'
      message = 'You Win'
    elsif player_hand == opponent_hand
      message = 'Draw!'
    end
    puts message
  end
end

loop do
  player = Player.new
  player.hand

  opponent = Opponent.new
  opponent.hand

  janken = Janken.new
  janken.pon($player_hand, $opponent_hand)
  janken.check($player_hand, $opponent_hand)

  puts 'Press any key to start again. Press q to quit'
  $final_input = gets.chomp
  break if $final_input == 'q'
end
