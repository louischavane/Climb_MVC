require_relative "view"
require_relative "climbing_route"

class Controller

  def initialize
    @view = View.new
    @climbing_routes = []
  end

  def list
    @view.list_routes(@climbing_routes)
  end

  def add
    name = @view.ask_for_name
    level = @view.ask_for_level
    climbing_route = ClimbingRoute.new(name, level)
    @climbing_routes << climbing_route
  end

  def climb
    index = @view.ask_for_index
    climbing_route = @climbing_routes[index]
    climbing_routes.climb
  end

end
