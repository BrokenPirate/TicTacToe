class BoardCases
  #TO DO : la classe a 1 attr_accessor, une array qui contient les BoardCases
  attr_accessor :cases, :player_name_1, :player_name_2

  def initia (player_name_1, player_name_2)
    #TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans une array qui est l'attr_accessor de la classe
    @player_name_1 = player_name_1.to_i
    @player_name_2 = player_name_2.to_i
    @cases = {"c1" => " ", "c2" => " ", "c3" => " ", "c4" => " ", "c5" => " ", "c6" => " ", "c7" => " ", "c8" => " ", "c9" => " "}
  end

  def to_aisse
  #TO DO : afficher le plateau

  puts "    1      2      3                                              "        
  puts "A   #{@cases["c1"]}  |   #{@cases["c2"]}   |   #{@cases["c3"]}   "
  puts " ______|_______|_______"
  puts "B   #{@cases["c4"]}  |   #{@cases["c5"]}   |   #{@cases["c6"]}   "
  puts " ______|_______|_______"
  puts "C   #{@cases["c7"]}  |   #{@cases["c8"]}   |   #{@cases["c9"]}   "
  puts "       |       |       "
  end

  def play
    
    puts "C'est ton tour #{player_name_1}, choisis une case (ex: A2)"
     val = gets.chomp
     val.downcase

  end

  def victory?
    #TO DO : qui gagne ?
  end
end

board = BoardCases.new
board.initia
board.to_aisse
board.play