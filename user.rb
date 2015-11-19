class User
  attr_reader :name
  attr_accessor :pencil_case

  def initialize(name, *pencils)
    @name = name
    @pencil_case = pencils
  end

  def add_pencil(pencil)
    pencil_case << pencil
  end

  def lose_pencils
    pencil_case = []
  end

  def test_pencils(test_message)
    pencil_case.each do |implement|
      implement.write(test_message)
    end
  end

  def use_random_pencil(message)
    pencil_case.sample.write(message)
  end
end