# Built-in data structure implementation of pencils:
#   pencil = ["yellow", "2B", true, true]
#   pencil1 = ["red", "4H", true, false]
#   pencil2 = ["green", "3B", false, false]
#  
#   def color(pencil)
#     pencil[0]
#   end
# 
#   def hardness(pencil)
#     pencil[1]
#   end

class Pencil
  attr_reader :color, :hardness, :is_mechanical, :lead_color,
              :lead_width
  attr_accessor :has_eraser, :length

  def initialize(args = {})
    @color = args[:color] || :yellow
    @hardness = args[:hardness] || "2"
    @has_eraser = args.fetch(:has_eraser, true)
    @is_mechanical = args.fetch(:is_mechanical, false)
    @lead_color = args[:lead_color] || "gray"
    @lead_width = args[:lead_width] || 0.7 #in millimeters
    @length = args[:length] || 10 # in inches
  end

  def write(message)
    puts message
  end

  def sharpen
    self.length -= 0.1
  end
end

pencil_a = Pencil.new(color: :yellow,
                      hardness: "2B",
                      has_eraser: true,
                      is_mechanical: true)

pencil_b = Pencil.new(color: :red,
                      hardness: "4H",
                      has_eraser: true,
                      is_mechanical: false)

pencil_c = Pencil.new(color: :green, 
                      hardness: "3B", 
                      has_eraser: false,
                      is_mechanical: false)