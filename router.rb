require_relative "controller"

class Router
  def initialize
    @controller = Controller.new
  end

  def start
    loop do
      # ask action
      puts "Que veux-tu faire ? "
      puts "1 - Lister les voies"
      puts "2 - Ajouter une voie"
      puts "3 - Déclarer une voie grimpée"

      action = gets.chomp

      if action == "1"
        @controller.list
      elsif action == "2"
        @controller.add
      elsif action == "3"
        @controller.climb
      else
        puts "Action non reconnue"
      end

    end
  end
end
