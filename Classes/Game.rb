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
            @player1.player_team = "X".blue
            @player2.player_team = "O".red
            @victory == false
            @player1.player_points = 0
            @player2.player_points = 0
     end
    
    
 

        def go
    # TO DO : lance la partie
      puts "Let's go!"
      puts "It's #{@current_player.player_name} turn!" 
      count = 0
		      	while @board_game.victory? != true do
			        
			          turn
			          count +=1
			          

			    if @board_game.victory? == true
			    	@board_game.show
			    	@current_player == @player1 ? @current_player = @player2 : @current_player = @player1
			    	winner = @current_player
			    	winner.player_points =+ 1
			    	
			    
			        puts "Winner! Good game, #{winner.player_name} !!!! -    Score:"
			        puts "#{@player1.player_name} : #{@player1.player_points} - VS -  #{@player2.player_name} : #{@player2.player_points}"



			        rematch


				elsif count == 9 
					puts "Match nul"					
				end
				end
		       
		      
  			
		end

  def turn
    #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie
 	
	   
 	@board_game.show	
 	team = @current_player.player_team
 	current_player = @current_player
 	puts "It's #{@current_player.player_name} turn! (#{@current_player.player_team})"

 	print "> "
 	choice = gets.chomp.to_i #.to_i

 	
 	if choice.between?(1, 9)
 		@board_game.play(choice, team, current_player)
 	else
 		puts "Choose an available case between 1 and 9"
 		choice = gets.chomp.to_i
 	end


 
 	@current_player == @player1 ? @current_player = @player2 : @current_player = @player1
 	team = @current_player.player_team
	

 	

  end

  def rematch
  		puts "Try again ? Y/N"                                                                  
    choice = (gets.chomp).to_s.capitalize
    if choice == "Y"       # Si Y -> Recommencer un board                                                                
      @board_game.victory? == true
      @board_game = Board.new
      self.go
      # Change de joueur qui commence
      @current_player == @player1 ? @current_player = @player2 : @current_player = @player1

    else
    	puts "Fin du jeu - #{@player1.player_name} : #{@player1.player_points} - VS -  #{@player2.player_name} : #{@player2.player_points}"
    end
  end

end
