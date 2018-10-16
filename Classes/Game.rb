class Game
  
    #TO DO : créé 2 joueurs, créé un board
    
      def initialize
      	    puts "Player 1 will be playing X -> Whats Player 1 name ?"
            @player1 = Player.new(@player_name, "x")
            puts "Player 2 will be playing O -> Whats Player 2 name ?"
            @player2 = Player.new(@player_name, "o")
            puts "#{@player1.player_name} will play X"
            puts "#{@player2.player_name} will play O"
            
            @board_game = Board.new
   			choice = @board_game.choice
            @current_player = @player1
            @player1.player_team = "X"
            @player2.player_team = "O"
            @victory == false
     end
    
    
 

  def go
    # TO DO : lance la partie
    puts "Let's go !"
    @board_game.show
    puts "It's #{@current_player.player_name} turn!"
    turn

  end

  def turn
    #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie
 	

 	loop do 
 	team = @current_player.player_team
 	choice = gets.chomp.to_i
 	if player_choice.between?(1,9)

 	else
 		puts "Choose an available case between 1 and 9"
 	end

 	@current_player == @player1 ? @current_player = @player2 : @current_player = @player1

 	break if victory? == true
	end

  end

end
