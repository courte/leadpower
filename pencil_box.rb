class PencilCase
  attr_accessor :pencils

  def initialize(args = {})
    @pencils = args[:pencils] || []
  end
end
