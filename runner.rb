require 'pry'

require_relative 'colorable'
require_relative 'pencil'
require_relative 'pen'
require_relative 'crayon'
require_relative 'pastel'

pencil_a = MechanicalPencil.new(color: :yellow,
                                hardness: "2B",
                                has_eraser: true)

pencil_b = StandardPencil.new(color: :red,
                      hardness: "4H",
                      has_eraser: true)

pencil_c = ColoredPencil.new(color: :green,
                      lead_color: :purple, 
                      hardness: "3B", 
                      has_eraser: false)

pen = Pen.new(ink_color: :red)

crayon = Crayon.new(wax_color: :purple)

puts kristie = PencilBox.new(pencils: [pencil_a, pencil_b, pencil_c])

puts marcel = PencilBox.new()

puts james = PencilBox.new()
binding.pry
james.pencils << pencil_b