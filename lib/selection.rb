# Selection keeps track of choices (dish and quantity)
class Selection

  attr_reader :choices

  def initialize
    @choices = []
  end

  def add(dish, quantity)
    @choices << { dish: dish, quantity: quantity }
  end

  def total(summary = Summary)
    summary = summary.new(@choices)
    summary.total
  end

end
