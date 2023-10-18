class Player   #Création du joueur 1
  attr_accessor :name, :life_points  #info name et points de vie

  def initialize(name, life_points = 10)  # Initialisation des future players et leurs points de vie
      @name = name
      @life_points = life_points
  end

  def show_state  #diffuse les elements des players 
      puts " #{@name} possède #{@life_points} points de vie"
  end

  def gets_damage(take_dommage)  #Message player qui reçois des damages - death
      @life_points -= take_dommage    #Formulede soustraction des entiers avec -=
      @life_points <= 0 ? (puts " #{@name} est Dead plus que la Mort elle même (Fianaly)!") : show_state #L'opérateur ternaire ? (...) : permet de controler grace au <=, et si ce n'est pas bon : renvoi ailleur 
  end

  def attacks(other)
      puts "Que le meilleur gagne #{@name} attaque le joueur #{other.name}"
      damage = compute_damage   #création d'une variable de damage avec la méthode comput pour un damage aléatoire
      other.gets_damage(damage)  #mon joueur attaqué (@name.gets_damage) prend des damages grace (damage)
      puts " #{damage} points de dommages dans sublim Kicks !!! "
  end

  def compute_damage
      return rand(1..6)
  end


end