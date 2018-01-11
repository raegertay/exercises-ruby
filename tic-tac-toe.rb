class Game

  def initialize
    @moves = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
    @player1 = 'X'
    @player2 = 'O'
    @moves_reference = ['1', '2', '3', '4', '5', '6', '7', '8', '9']
  end

  def start
    puts 'Welcome to a game of Tic Tac Toe!'
    create_board @moves_reference
    puts 'Choose 1, 2 or 3'
    puts '1. Play against your friend'
    puts '2. Play against the computer (easy)'
    puts '3. Play against the computer (hard) - WIP'
    case gets.chomp.to_i
    when 1
      versus_human
    when 2
      versus_computer_easy
    when 3
      versus_computer_hard
    else
      puts 'Invalid input. Please make your selection again.'
      start
    end
    play_again
  end

  private

  def versus_human
    create_board @moves
    loop do
      player_turn @player1
      break if (won? @player1) || draw?
      player_turn @player2
      break if (won? @player2) || draw?
    end
  end

  def versus_computer_easy
    puts 'Enter 1 to go first, or 2 to go second.'
    user_selection = gets.chomp.to_i
    if user_selection == 1
      create_board @moves
      loop do
        player_turn @player1
        break if (won? @player1) || draw?
        computer_easy_turn @player2
        break if (won? @player2) || draw?
      end
    elsif user_selection == 2
      loop do
        computer_easy_turn @player1
        break if (won? @player1) || draw?
        player_turn @player2
        break if (won? @player2) || draw?
      end
    else
      puts 'Invalid selection. Please try again.'
      versus_computer_easy
    end
  end

  def versus_computer_hard
    puts 'Work in progress'
    start
  end

  def create_board moves
    puts ''
    puts ' ' + moves[0..2].join(' | ')
    puts '-----------'
    puts ' ' + moves[3..5].join(' | ')
    puts '-----------'
    puts ' ' + moves[6..8].join(' | ')
    puts ''
  end

  def player_turn(player)
    puts "Player #{player}: Enter your position [1-9]"
    position = gets.chomp.to_i
    if @moves[position - 1] == ' '
      @moves[position - 1] = player
    else
      puts "Position #{position} is already taken. Choose other positions."
      create_board @moves
      player_turn(player)
    end
    create_board @moves
  end

  def computer_easy_turn(player)
    empty_positions = @moves.each_index.select { |i| @moves[i] == ' ' }
    @moves[empty_positions.sample] = player
    puts 'Computer is thinking...computer has moved.'
    create_board @moves
  end

  def won?(player)
    if (@moves[0] == player && @moves[1] == player && @moves[2] == player) ||
       (@moves[3] == player && @moves[4] == player && @moves[5] == player) ||
       (@moves[6] == player && @moves[7] == player && @moves[8] == player) ||
       (@moves[0] == player && @moves[3] == player && @moves[6] == player) ||
       (@moves[1] == player && @moves[4] == player && @moves[7] == player) ||
       (@moves[2] == player && @moves[5] == player && @moves[8] == player) ||
       (@moves[0] == player && @moves[4] == player && @moves[8] == player) ||
       (@moves[2] == player && @moves[4] == player && @moves[6] == player)
      puts "Player #{player} has won!"
      true
    end
  end

  def draw?
    if @moves.index(' ').nil?
      puts "It's a draw!"
      true
    end
  end

  def play_again
    puts "Hit 'p' to play again or any other key to quit."
    if gets.chomp == 'p'
      @moves = [' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ']
      start
    end
  end

end

new_game = Game.new
new_game.start
