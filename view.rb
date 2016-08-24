class View

  def ask_for_name
    puts "quel est le nom?"
    return gets.chomp
  end

  def ask_for_level
    puts "quel est le level?"
    return gets.chomp
  end

  def list_routes(climbing_routes)
    index = 0
    climbing_routes.each do |climbing_route|
      if climbing_route.done?
        marker = "[x]"
      else
        marker = "[ ]"
      end

      puts "Voie : #{index} #{marker} - #{climbing_route.name} / #{climbing_route.level}"
    end
  end

end
