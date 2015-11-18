class Pencil
  include Colorable
  attr_reader :color, :lead_color, :hardness
  attr_accessor :length, :has_eraser

  def initialize(args = {})
    @color = args[:color]
    @lead_color = args[:lead_color] || :black
    @hardness = args[:hardness] || "2"
    @length = args[:length] || 10 # in inches
    @has_eraser = args.fetch(:has_eraser, true)
  end

  def default_color
    lead_color
  end

  def sharpen
    self.length -= 0.1
  end
end

class StandardPencil < Pencil
  def initialize(args = {})
    super(args)
    @color = args[:color] || :yellow
  end
end

class MechanicalPencil < Pencil
  attr_reader :lead_width

  def initialize(args = {})
    super(args)
    @lead_width = args[:lead_width] || 0.7 #in millimeters
  end

  def is_mechanical?
    true
  end

  def needs_refill?
    false
  end
end

class ColoredPencil < Pencil
end
