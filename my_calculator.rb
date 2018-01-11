class MyCalculator

  def initialize(int1=4, int2=9)
    @int1 = int1
    @int2 = int2
  end

  def add(a, b)
    a + b
  end

  def subtract
    @int2 - @int1
  end

  def self.check
    "0123456789"
  end

end
