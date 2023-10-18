require 'bundler'
Bundler.require

require_relative 'lib/game'
require_relative 'lib/player'

puts " "
puts "Final Game !!!"
 

puts "À ma droite 'Josée'"
player1 = Player.new("Josée")

puts "À ma gauche 'Mickey'"
player2 = Player.new("Mickey")

puts " "

puts " Le Duel final "
player1.show_state
player2.show_state

while player1.life_points > 0 && player2.life_points > 0 #boucle while qui part du player1 puis invoque les life poits, si > à 0 et pareil pour le deux 

    puts " "
    puts "FIGHT FIGHT FIGHT FIGHT FIGHT FIGHT FIGHT FIGHT"
    player1.attacks(player2)
    break if player2.life_points <= 0
    player2.attacks(player1)

    puts " Congratulation "
    player1.show_state
    player2.show_state
end
binding.pry
