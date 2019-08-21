class Integer
  attr_accessor :number1, :number2

  def initialize(number1, number2)
    @number1 = number1
    @number2 = number2
  end

  def self.add
    @number1 + @number2
  end

  def self.subtract
    @number1 - @number2
  end

  def self.multiply
    @number1 * @number2
  end

  def self.divide
    @number1/@number2
  end

end
