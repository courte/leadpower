class Pastel
  include Colorable
  attr_reader :wax_color

  def initialize(args = {})
    @color = args[:color]
  end
end