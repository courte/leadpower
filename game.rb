require 'pry'

require_relative 'colorable'
require_relative 'pencil'
require_relative 'pen'
require_relative 'crayon'
require_relative 'pastel'
require_relative 'user'

common_imp1 = StandardPencil.new(hardness: "2", has_eraser: true)
common_imp2 = Pen.new(ink_color: :blue)
common_imp3 = Pen.new(ink_color: :black, width: 0.5)
common_imp4 = Crayon.new(wax_color: :black)
common_imp5 = Crayon.new(wax_color: :red)
common_imp6 = Crayon.new(wax_color: :yellow)
common_imp7 = Crayon.new(wax_color: :blue)

rare_imp1 = MechanicalPencil.new(lead_color: :cyan, color: :black,
                                 hardness: "7H", has_eraser: false)
rare_imp2 = ColoredPencil.new(color: :green, lead_color: :purple,
                              hardness: "3B", has_eraser: false)
rare_imp3 = Pen.new(ink_color: :light_red)
rare_imp4 = Pastel.new(color: :light_purple)
rare_imp5 = Crayon.new(wax_color: :purple)

COMMON_IMPLEMENTS = [common_imp1, common_imp2, common_imp3,
                     common_imp4, common_imp5, common_imp6,
                     common_imp7]

RARE_IMPLEMENTS = [rare_imp1, rare_imp2, rare_imp3, rare_imp4,
                   rare_imp5]

class View
  def input
    gets.chomp
  end

  def display(message)
    puts message
  end

  def welcome
    display("Welcome to Lead Power!")
  end

  def greet(name)
    display("Hi, #{name}!")
  end

  def instructions
    "Would you like to:\n" +
    "\t1. search for implements?\n" +
    "\t2. test your implements?\n" +
    "\t3. "
  end

  def show_menu
    display(instructions)
  end
end

class Game
  attr_reader :user, :view

  def initialize
    @view = View.new
  end

  def create_user
    view.display("What's your name?")
    name = view.input
    @user = User.new(name)
  end

  def run
    view.welcome
    create_user
    view.greet(user.name)

    view.show_menu
    input = view.input

    until input == "exit"

      view.show_menu
      input = view.input
    end
  end
end


