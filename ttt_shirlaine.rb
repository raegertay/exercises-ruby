def start
  welcome_message #welcomes player and shows empty board
  show_board(board) #gets input from player and reflects X on board
end

#Welcome Message
def welcome_message
  puts "Welcome to Tic-Tac-Toe"
  new_board = ["0","1","2","3","4","5","6","7","8"]
  show_board(new_board)

end


def show_board(board)
  puts line_1= "#{board[0]} | #{board[1]} | #{board[2]} "
  puts line_separator="---------"
  puts line_2= "#{board[3]} | #{board[4]} | #{board[5]} "
  puts line_separator= "---------"
  puts line_3= "#{board[6]} | #{board[7]} | #{board[8]} "
end

def gets_input
  puts "Choose your position from 0-8 by typing it in."
  gets.chomp #string 9
end

def board
  board_array=["0","1","2","3","4","5","6","7","8"]

  count=1
  limit=10 ##

  while count<limit do

   if count.odd?
    p count
    count+=1
    player1_input = gets_input
    puts "Player 1(X) chooses #{player1_input}"

    board_array.each do |string|
      if string == player1_input
        board_array[string.to_i]="X"
      # else
      #  board_array[string.to_i]= string
      end
    end

      p board_array
      show_board(board_array)

    #  #puts the updated board_array into show_board
  elsif count.even?
    p count
    count+=1
    player2_input = gets_input
    puts "Player 2(0) chooses #{player2_input}"

    board_array.each do |string|
      if string == player2_input
        board_array[string.to_i]= "O"
      # else
      #  board_array[string.to_i]= string
      end
    end
      p board_array
      show_board(board_array)

  end

  end
      puts "this is the final standing"
      board_array
end


start
