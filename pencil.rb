require 'pry'

class Pencil
  attr_reader :color, :lead_color, :hardness
  attr_accessor :length, :has_eraser

  def initialize(args = {})
    @color = args[:color]
    @lead_color = args[:lead_color] || "black"
    @hardness = args[:hardness] || "2"
    @length = args[:length] || 10 # in inches
    @has_eraser = args.fetch(:has_eraser, true)
  end

  def write(message)
    puts message
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
    # @color = args[:color]
    # @lead_color = args[:lead_color] || "black"
    # @hardness = args[:hardness] || "2"
    # @length = args[:length] || 10 # in inches
    # @has_eraser = args.fetch(:has_eraser, true)
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

class PencilBox
  attr_accessor :pencils

  def initialize(args = {})
    @pencils = args[:pencils] || []
  end
end


pencil_a = MechanicalPencil.new(color: :yellow,
                                hardness: "2B",
                                has_eraser: true)

pencil_b = StandardPencil.new(color: :red,
                      hardness: "4H",
                      has_eraser: true)

pencil_c = ColoredPencil.new(color: :green,
                      lead_color: "purple", 
                      hardness: "3B", 
                      has_eraser: false)

puts kristie = PencilBox.new(pencils: [pencil_a, pencil_b, pencil_c])

puts marcel = PencilBox.new()

puts james = PencilBox.new()
binding.pry
james.pencils << pencil_b

