class Crayon
  include Colorable
  attr_reader :wax_color

  def initialize(args = {})
    @wax_color = args[:wax_color]
  end

  def default_color
    wax_color
  end
end