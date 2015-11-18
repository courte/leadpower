class Pen
  include Colorable
  attr_reader :ink_color, :width, :fineness

  def initialize(args = {})
    @ink_color = args[:ink_color]
    @width = args[:width] || 0.7
    @fineness = 'mighty fine'
  end

  def default_color
    ink_color
  end
end