class Game
  
    #TO DO : créé 2 joueurs, créé un board
                                                                           # Variable de classe qui permet de "casser" la loop si quelqu'un gagne


      def initialize
      	    puts "Player 1 will be playing X -> Whats Player 1 name ?"
            @player1 = Player.new(@player_name, "x")
            puts "Player 2 will be playing O -> Whats Player 2 name ?"
            @player2 = Player.new(@player_name, "o")
            puts "#{@player1.player_name} will play X"
            puts "#{@player2.player_name} will play O"
            
            @board_game = Board.new
            @current_player = @player1
            @player1.player_team = "X"
            @player2.player_team = "O"
            @victory == false
     end
    
    
 

  def go
    # TO DO : lance la partie
    puts "Let's go !"
    puts "It's #{@current_player.player_name} turn!"
    count = 0
    while count < 9
    turn
    count += 1
    	if @victory                                                                          # Win du player 1, break de la loop si besoin et affiche la board finie
        puts "\nThere is a winner :"
        @board_game.show
        puts "\nGood game #{@player1.player_name} !"
        break
      end
  end

  end

  def turn
    #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie
 	
	   
 	@board_game.show	
 	team = @current_player.player_team
 	current_player = @current_player
 	puts "It's #{@current_player.player_name} turn!"

 	print ">"
 	choice = gets.chomp.to_i #.to_i

 	
 	if choice.between?(1, 9)
 		@board_game.play(choice, team, current_player)
 		@board_game.get_player_choice(choice, team, current_player)
 	else
 		puts "Choose an available case between 1 and 9"
 	end

 
 	@current_player == @player1 ? @current_player = @player2 : @current_player = @player1
 	team = @current_player.player_team
	

 	

  end

end
