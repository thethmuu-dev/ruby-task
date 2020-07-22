# frozen_string_literal: true

# let the player make input
class Player
  def get_gesture_name(hash, key)
    hash[key]
  end

  def hand
    hands = {
      0 => 'Rock',
      1 => 'Paper',
      2 => 'Scissors'
    }

    loop do
      puts 'Enter a number.'
      puts '0: Rock, 1: Paper, 2: Scissors'
      input_hand = gets.chomp.to_i
      if input_hand < 3
        puts "You entered #{get_gesture_name(hands, input_hand)}."
        break
      else
        puts 'Enter the number again.'
        # puts '0: goo, 1: choki, 2: par'
      end
    end
  end
end

# make opponent input
class Opponent
  def hand; end
end

player = Player.new
player.hand
