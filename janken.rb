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
      if input_hand < 3
        player_hand = get_gesture_name($hands, input_hand)
        puts "You entered #{player_hand}."
        return player_hand
      else
        puts 'Enter the number again.'
        # puts '0: goo, 1: choki, 2: par'
      end
    end
  end
end

# make opponent input
class Opponent
  def hand
    opponent_hand = $hands[rand($hands.length)]
    puts "Opponent entered #{opponent_hand}."
    return opponent_hand
  end
end

# Janken Decision
class Janken
  def pon(player_hand, opponent_hand)
    if 1==1
      puts "You Win as it is #{player_hand} and #{opponent_hand}"
    end
  end
end

player = Player.new
player.hand

opponent = Opponent.new
opponent.hand

janken = Janken.new
janken.pon(player_hand, opponent_hand)