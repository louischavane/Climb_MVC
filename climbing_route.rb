class ClimbingRoute
  attr_reader :name, :level

  def initialize(name, level)
    @name = name
    @level = level
    @done = false
  end

  def climb
    @done = true
  end

  def done?
    @done
  end

end
