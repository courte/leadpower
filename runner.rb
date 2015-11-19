require 'pry'

require_relative 'colorable'
require_relative 'pencil'
require_relative 'pen'
require_relative 'crayon'
require_relative 'pastel'
require_relative 'user'

common_pencil = StandardPencil.new(hardness: "2", has_eraser: true)
common_pen1 = Pen.new(ink_color: :blue)
common_pen2 = Pen.new(ink_color: :black, width: 0.5)
common_crayon1 = Crayon.new(wax_color: :black)
common_crayon2 = Crayon.new(wax_color: :red)
common_crayon3 = Crayon.new(wax_color: :yellow)
common_crayon4 = Crayon.new(wax_color: :blue)

rare_pencil1 = MechanicalPencil.new(lead_color: :cyan,
                                    color: :black,
                                    hardness: "7H",
                                    has_eraser: false)
rare_pencil2 = ColoredPencil.new(color: :green,
                                 lead_color: :purple, 
                                 hardness: "3B", 
                                 has_eraser: false)
rare_pen = Pen.new(ink_color: :light_red)
rare_pastel = Pastel.new(color: :light_purple)
rare_crayon = Crayon.new(wax_color: :purple)

COMMON_IMPLEMENTS = [common_pencil, common_pen1, common_pen2,
                     common_crayon1, common_crayon2, common_crayon3,
                     common_crayon4]

RARE_IMPLEMENTS = [rare_pencil1, rare_pencil2, rare_pen, rare_pastel,
                   rare_crayon]
