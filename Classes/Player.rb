class Player
  
  attr_accessor :player_name_1, :player_name_2

  def init
    #TO DO : doit régler son nom, sa valeur, son état de victoire

    puts "Joueur 1 choisis ton nom"
    print ">"
    @player_name_1 = gets.chomp

    puts "Joueur 2 choisis ton nom"
    print ">"
    @player_name_2 = gets.chomp

    puts "Bienvenue sur TicTacToe #{@player_name_1}, tu as les croix et #{player_name_2}, tu as les ronds. Bon jeu :)"
  end

  def welcome

    "Bienvenue sur TicTacToe #{@player_name_1} et #{player_name_2}"

  end
  
end

newgame = Player.new
newgame.init
newgame.welcome